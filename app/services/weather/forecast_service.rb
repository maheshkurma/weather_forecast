# frozen_string_literal: true

module Weather
  class ForecastService
    attr_reader :address

    def initialize(address:)
      @address = address
      @location = Geocoder.search(address).select { |s| s.data['address']['postcode'] }
      @postal_code = @location.last&.postal_code&.delete(' ')
    end

    def call
      raise_exceptions

      return JSON.parse(cache) if cache.present?

      build_data
      set_cache(build_data)

      build_data
    rescue Exception => e
      { 'error' => e.message }
    end

    private

    def connection
      @connection = OpenWeatherMap::API.new(api_key, 'en', 'metric')
    end

    def build_data
      weather = connection.current(@postal_code).weather_conditions
      {
        'temperature' => weather.temperature,
        'temp_min' => weather.temp_min,
        'temp_max' => weather.temp_max
      }
    end

    def api_key
      WeatherConfig.api_key
    end

    def cache
      @cache || $redis.get(@postal_code)
    end

    def set_cache(data)
      @set_cache || $redis.set(@postal_code, data.to_json, ex: 1800)
    end

    def raise_exceptions
      raise Exception.new "No Address Given" unless @address.present?
    end
  end
end
