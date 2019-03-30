require "application_system_test_case"

class UserRoutinesTest < ApplicationSystemTestCase
  setup do
    @user_routine = user_routines(:one)
  end

  test "visiting the index" do
    visit user_routines_url
    assert_selector "h1", text: "User Routines"
  end

  test "creating a User routine" do
    visit user_routines_url
    click_on "New User Routine"

    fill_in "Day", with: @user_routine.day_id
    fill_in "Routine", with: @user_routine.routine_id
    click_on "Create User routine"

    assert_text "User routine was successfully created"
    click_on "Back"
  end

  test "updating a User routine" do
    visit user_routines_url
    click_on "Edit", match: :first

    fill_in "Day", with: @user_routine.day_id
    fill_in "Routine", with: @user_routine.routine_id
    click_on "Update User routine"

    assert_text "User routine was successfully updated"
    click_on "Back"
  end

  test "destroying a User routine" do
    visit user_routines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User routine was successfully destroyed"
  end
end
