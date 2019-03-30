require 'test_helper'

class UserRoutinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_routine = user_routines(:one)
  end

  test "should get index" do
    get user_routines_url
    assert_response :success
  end

  test "should get new" do
    get new_user_routine_url
    assert_response :success
  end

  test "should create user_routine" do
    assert_difference('UserRoutine.count') do
      post user_routines_url, params: { user_routine: { day_id: @user_routine.day_id, routine_id: @user_routine.routine_id } }
    end

    assert_redirected_to user_routine_url(UserRoutine.last)
  end

  test "should show user_routine" do
    get user_routine_url(@user_routine)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_routine_url(@user_routine)
    assert_response :success
  end

  test "should update user_routine" do
    patch user_routine_url(@user_routine), params: { user_routine: { day_id: @user_routine.day_id, routine_id: @user_routine.routine_id } }
    assert_redirected_to user_routine_url(@user_routine)
  end

  test "should destroy user_routine" do
    assert_difference('UserRoutine.count', -1) do
      delete user_routine_url(@user_routine)
    end

    assert_redirected_to user_routines_url
  end
end
