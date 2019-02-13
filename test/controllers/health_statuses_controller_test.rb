require 'test_helper'

class HealthStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_status = health_statuses(:one)
  end

  test "should get index" do
    get health_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_health_status_url
    assert_response :success
  end

  test "should create health_status" do
    assert_difference('HealthStatus.count') do
      post health_statuses_url, params: { health_status: { blood_pressure: @health_status.blood_pressure, day_id: @health_status.day_id, height: @health_status.height, sugar: @health_status.sugar, waist_line: @health_status.waist_line, weight: @health_status.weight } }
    end

    assert_redirected_to health_status_url(HealthStatus.last)
  end

  test "should show health_status" do
    get health_status_url(@health_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_status_url(@health_status)
    assert_response :success
  end

  test "should update health_status" do
    patch health_status_url(@health_status), params: { health_status: { blood_pressure: @health_status.blood_pressure, day_id: @health_status.day_id, height: @health_status.height, sugar: @health_status.sugar, waist_line: @health_status.waist_line, weight: @health_status.weight } }
    assert_redirected_to health_status_url(@health_status)
  end

  test "should destroy health_status" do
    assert_difference('HealthStatus.count', -1) do
      delete health_status_url(@health_status)
    end

    assert_redirected_to health_statuses_url
  end
end
