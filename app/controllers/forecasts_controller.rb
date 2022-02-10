# frozen_string_literal: true

class ForecastsController < ApplicationController
  def index
    @result = Weather::ForecastService.new(address: search_params[:input]).call
  end

  private

  # Only allow a trusted parameter "white list" through.
  def search_params
    params.permit(:input)
  end
end
