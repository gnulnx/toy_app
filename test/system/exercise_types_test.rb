require "application_system_test_case"

class ExerciseTypesTest < ApplicationSystemTestCase
  setup do
    @exercise_type = exercise_types(:one)
  end

  test "visiting the index" do
    visit exercise_types_url
    assert_selector "h1", text: "Exercise Types"
  end

  test "creating a Exercise type" do
    visit exercise_types_url
    click_on "New Exercise Type"

    fill_in "Name", with: @exercise_type.name
    fill_in "Primary Muscles", with: @exercise_type.primary_muscles
    click_on "Create Exercise type"

    assert_text "Exercise type was successfully created"
    click_on "Back"
  end

  test "updating a Exercise type" do
    visit exercise_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @exercise_type.name
    fill_in "Primary Muscles", with: @exercise_type.primary_muscles
    click_on "Update Exercise type"

    assert_text "Exercise type was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercise type" do
    visit exercise_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercise type was successfully destroyed"
  end
end
