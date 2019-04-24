require "application_system_test_case"

class PathfindersTest < ApplicationSystemTestCase
  setup do
    @pathfinder = pathfinders(:one)
  end

  test "visiting the index" do
    visit pathfinders_url
    assert_selector "h1", text: "Pathfinders"
  end

  test "creating a Pathfinder" do
    visit pathfinders_url
    click_on "New Pathfinder"

    fill_in "Birthday", with: @pathfinder.birthday
    fill_in "Dni", with: @pathfinder.dni
    fill_in "Last name", with: @pathfinder.last_name
    fill_in "Name", with: @pathfinder.name
    fill_in "Unit", with: @pathfinder.unit_id
    click_on "Create Pathfinder"

    assert_text "Pathfinder was successfully created"
    click_on "Back"
  end

  test "updating a Pathfinder" do
    visit pathfinders_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @pathfinder.birthday
    fill_in "Dni", with: @pathfinder.dni
    fill_in "Last name", with: @pathfinder.last_name
    fill_in "Name", with: @pathfinder.name
    fill_in "Unit", with: @pathfinder.unit_id
    click_on "Update Pathfinder"

    assert_text "Pathfinder was successfully updated"
    click_on "Back"
  end

  test "destroying a Pathfinder" do
    visit pathfinders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pathfinder was successfully destroyed"
  end
end
