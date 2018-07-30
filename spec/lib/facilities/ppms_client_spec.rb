# frozen_string_literal: true

require 'rails_helper'
module Facilities
  RSpec.describe PPMSClient do
    it 'should be an PPMSClient object' do
      expect(described_class.new).to be_an(PPMSClient)
    end

    # WIP just a smoke test
    describe 'route_fuctions' do
      it 'should not be null' do
        VCR.use_cassette('facilities/va/ppms') do
          r = PPMSClient.new.test_routes('Provider', 'Identifier': '12345')
          expect(r).not_to be(nil)
        end
      end

      it 'should also not be null' do
        VCR.use_cassette('facilities/va/ppms') do
          r = PPMSClient.new.provider_locator('bbox': [73, -60, 74, -61])
          expect(r).not_to be(nil)
        end
      end

      it 'should edit the parameters' do
        params = PPMSClient.new.build_params('bbox': [73, -60, 74, -61])
        expect(params['Radius']).to be > 69
      end
    end
  end
end
