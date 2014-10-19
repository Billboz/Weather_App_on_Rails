module CityWeatherHelper
  def from_k_to_f(tempK)
    ( 9.0 / 5 * ( tempK - 273 ) + 32 )
  end
end
