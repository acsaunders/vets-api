# frozen_string_literal: true

require_dependency 'appeals_api/application_controller'
require_dependency 'appeals_api/unsynchronized_evss_claims_service'

module AppealsApi
  module V0
    class ClaimsController < ApplicationController
      skip_before_action(:authenticate)

      def index
        claims = service.all
        render json: claims,
               serializer: ActiveModel::Serializer::CollectionSerializer,
               each_serializer: EVSSClaimListSerializer
      end

      def show
        claim = service.update_from_remote(params[:id])
        render json: claim, serializer: EVSSClaimDetailSerializer
      end

      private

      def service
        AppealsApi::UnsynchronizedEVSSClaimService.new(target_veteran)
      end

      def first_name
        first_name = request.headers['X-VA-First-Name']
        raise Common::Exceptions::ParameterMissing, 'X-VA-SSN' unless first_name
        first_name
      end

      def last_name
        last_name = request.headers['X-VA-Last-Name']
        raise Common::Exceptions::ParameterMissing, 'X-VA-SSN' unless last_name
        last_name
      end

      def edipi
        edipi = request.headers['X-VA-EDIPI']
        raise Common::Exceptions::ParameterMissing, 'X-VA-SSN' unless edipi
        edipi
      end

      def birth_date
        birth_date = request.headers['X-VA-Birth-Date']
        raise Common::Exceptions::ParameterMissing, 'X-VA-SSN' unless birth_date
        birth_date
      end

      def target_veteran
        veteran = OpenStruct.new
        veteran.ssn = ssn
        veteran.loa = { current: :loa3 }
        veteran.first_name = first_name
        veteran.last_name = last_name
        veteran.birth_date = birth_date
        veteran.edipi = edipi
        veteran.last_signed_in = Time.zone.now
        veteran
      end
    end
  end
end
