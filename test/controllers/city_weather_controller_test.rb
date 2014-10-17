require 'test_helper'

class CityWeatherControllerTest < ActionController::TestCase
  test "should get city_temp" do
    get :city_temp
    assert_response :success
  end

end
