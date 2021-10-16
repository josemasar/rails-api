require "test_helper"

class AircraftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aircraft = aircrafts(:one)
  end

  test "should get index" do
    get aircrafts_url, as: :json
    assert_response :success
  end

  test "should create aircraft" do
    assert_difference('Aircraft.count') do
      post aircrafts_url, params: { aircraft: { latitude: @aircraft.latitude, longitude: @aircraft.longitude } }, as: :json
    end

    assert_response 201
  end

  test "should show aircraft" do
    get aircraft_url(@aircraft), as: :json
    assert_response :success
  end

  test "should update aircraft" do
    patch aircraft_url(@aircraft), params: { aircraft: { latitude: @aircraft.latitude, longitude: @aircraft.longitude } }, as: :json
    assert_response 200
  end

  test "should destroy aircraft" do
    assert_difference('Aircraft.count', -1) do
      delete aircraft_url(@aircraft), as: :json
    end

    assert_response 204
  end
end
