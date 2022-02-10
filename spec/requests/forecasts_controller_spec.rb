# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ForecastsController, type: :controller do
  let!(:params) do
    { input: 'Columbus, OH' }
  end

  describe 'fetch data from Forecast' do
    render_views
    context 'when user gets data using Weather Forecast based on input location' do
      it 'returns Temperature Details sucessfully' do
        get :index, params: params, xhr: true
        expect(response.status).to eq(200)
        expect(response).to render_template(partial: 'forecasts/_result')
      end
    end

    context 'when user gets data using Weather Forecast based on input location' do
      it 'returns Temperature Details sucessfully' do
        get :index, xhr: true
        expect(response.status).to eq(200)
        expect(response).to render_template(partial: 'forecasts/_error')
      end
    end
  end
end
