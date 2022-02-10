# frozen_string_literal: true

PATHNAME = Rails.root.join('config')
ENVIRONMENT = Rails.env

WeatherConfig = HierarchicalConfig.load_config('weather', PATHNAME, ENVIRONMENT)
