class CityWeatherController < ApplicationController

QUERY_URL = "http://api.openweathermap.org/data/2.5/weather"

  def city_temp
    city = params[:city_text_field]
    if city.present?
      uri = URI(QUERY_URL + "?q=#{URI.escape(city)}")
      raw_json = Net::HTTP.get(uri)
      @parsed_data = JSON.parse(raw_json)



      tempK = @parsed_data["main"]["temp"].to_i
      @tempF = ( 9.0 / 5 * ( tempK - 273 ) + 32 )

      @weather = @parsed_data["weather"].first["description"]
   end
  end
end
