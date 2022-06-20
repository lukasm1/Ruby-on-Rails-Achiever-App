require "test_helper"

class AchieverHabitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @achiever_habit = achiever_habits(:one)
  end

  test "should get index" do
    get achiever_habits_url
    assert_response :success
  end

  test "should get new" do
    get new_achiever_habit_url
    assert_response :success
  end

  test "should create achiever_habit" do
    assert_difference("AchieverHabit.count") do
      post achiever_habits_url, params: { achiever_habit: { achiever_id: @achiever_habit.achiever_id, habit_id: @achiever_habit.habit_id } }
    end

    assert_redirected_to achiever_habit_url(AchieverHabit.last)
  end

  test "should show achiever_habit" do
    get achiever_habit_url(@achiever_habit)
    assert_response :success
  end

  test "should get edit" do
    get edit_achiever_habit_url(@achiever_habit)
    assert_response :success
  end

  test "should update achiever_habit" do
    patch achiever_habit_url(@achiever_habit), params: { achiever_habit: { achiever_id: @achiever_habit.achiever_id, habit_id: @achiever_habit.habit_id } }
    assert_redirected_to achiever_habit_url(@achiever_habit)
  end

  test "should destroy achiever_habit" do
    assert_difference("AchieverHabit.count", -1) do
      delete achiever_habit_url(@achiever_habit)
    end

    assert_redirected_to achiever_habits_url
  end
end
