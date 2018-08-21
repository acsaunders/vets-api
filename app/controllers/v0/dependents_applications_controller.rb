# frozen_string_literal: true

module V0
  class DependentsApplicationsController < ApplicationController
    FORM_ID = '21-686C'
    skip_before_action :authenticate, only: :create
    before_action(:tag_rainbows)

    def create
      form = JSON.parse(params[:form])
      validate!(form)
      render json: {}
    end

    def disability_rating
      res = EVSS::Dependents::Service.new(current_user).retrieve
      render json: { has30_percent: res.body.dig('submit_process', 'application', 'has30_percent') }
    end

    private

    def validate!(form)
      validation_errors = JSON::Validator.fully_validate(
        VetsJsonSchema::SCHEMAS[FORM_ID],
        form, validate_schema: true
      )

      raise Common::Exceptions::SchemaValidationErrors, validation_errors if validation_errors.present?
    end
  end
end
