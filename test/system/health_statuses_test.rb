require "application_system_test_case"

class HealthStatusesTest < ApplicationSystemTestCase
  setup do
    @health_status = health_statuses(:one)
  end

  test "visiting the index" do
    visit health_statuses_url
    assert_selector "h1", text: "Health Statuses"
  end

  test "creating a Health status" do
    visit health_statuses_url
    click_on "New Health Status"

    fill_in "Blood pressure", with: @health_status.blood_pressure
    fill_in "Day", with: @health_status.day_id
    fill_in "Height", with: @health_status.height
    fill_in "Sugar", with: @health_status.sugar
    fill_in "Waist line", with: @health_status.waist_line
    fill_in "Weight", with: @health_status.weight
    click_on "Create Health status"

    assert_text "Health status was successfully created"
    click_on "Back"
  end

  test "updating a Health status" do
    visit health_statuses_url
    click_on "Edit", match: :first

    fill_in "Blood pressure", with: @health_status.blood_pressure
    fill_in "Day", with: @health_status.day_id
    fill_in "Height", with: @health_status.height
    fill_in "Sugar", with: @health_status.sugar
    fill_in "Waist line", with: @health_status.waist_line
    fill_in "Weight", with: @health_status.weight
    click_on "Update Health status"

    assert_text "Health status was successfully updated"
    click_on "Back"
  end

  test "destroying a Health status" do
    visit health_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health status was successfully destroyed"
  end
end
