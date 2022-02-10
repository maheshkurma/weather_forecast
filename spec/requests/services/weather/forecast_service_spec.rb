# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Weather::ForecastService, type: :request do
  let!(:address) do
    'Tampa FL'
  end
  let!(:empty_address) do
    ''
  end

  context 'GET Weather Forecast Data from Open Mao api' do
    it 'Should get weather data' do
      weather_forecast = Weather::ForecastService.new(address: address)
      response = weather_forecast.call
      expect(response.keys).to match_array(%w[temperature temp_min temp_max])
    end

    it 'Should catch Error Response' do
      weather_forecast = Weather::ForecastService.new(address: empty_address)
      response = weather_forecast.call
      expect(response['error']).to eq('No Address Given')
    end
  end
end
