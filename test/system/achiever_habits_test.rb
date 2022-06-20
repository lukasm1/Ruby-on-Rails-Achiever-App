require "application_system_test_case"

class AchieverHabitsTest < ApplicationSystemTestCase
  setup do
    @achiever_habit = achiever_habits(:one)
  end

  test "visiting the index" do
    visit achiever_habits_url
    assert_selector "h1", text: "Achiever habits"
  end

  test "should create achiever habit" do
    visit achiever_habits_url
    click_on "New achiever habit"

    fill_in "Achiever", with: @achiever_habit.achiever_id
    fill_in "Habit", with: @achiever_habit.habit_id
    click_on "Create Achiever habit"

    assert_text "Achiever habit was successfully created"
    click_on "Back"
  end

  test "should update Achiever habit" do
    visit achiever_habit_url(@achiever_habit)
    click_on "Edit this achiever habit", match: :first

    fill_in "Achiever", with: @achiever_habit.achiever_id
    fill_in "Habit", with: @achiever_habit.habit_id
    click_on "Update Achiever habit"

    assert_text "Achiever habit was successfully updated"
    click_on "Back"
  end

  test "should destroy Achiever habit" do
    visit achiever_habit_url(@achiever_habit)
    click_on "Destroy this achiever habit", match: :first

    assert_text "Achiever habit was successfully destroyed"
  end
end
