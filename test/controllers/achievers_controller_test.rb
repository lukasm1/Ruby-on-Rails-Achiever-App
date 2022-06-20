require "test_helper"

class AchieversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @achiever = achievers(:one)
  end

  test "should get index" do
    get achievers_url
    assert_response :success
  end

  test "should get new" do
    get new_achiever_url
    assert_response :success
  end

  test "should create achiever" do
    assert_difference("Achiever.count") do
      post achievers_url, params: { achiever: { area_of_expertise: @achiever.area_of_expertise, name: @achiever.name } }
    end

    assert_redirected_to achiever_url(Achiever.last)
  end

  test "should show achiever" do
    get achiever_url(@achiever)
    assert_response :success
  end

  test "should get edit" do
    get edit_achiever_url(@achiever)
    assert_response :success
  end

  test "should update achiever" do
    patch achiever_url(@achiever), params: { achiever: { area_of_expertise: @achiever.area_of_expertise, name: @achiever.name } }
    assert_redirected_to achiever_url(@achiever)
  end

  test "should destroy achiever" do
    assert_difference("Achiever.count", -1) do
      delete achiever_url(@achiever)
    end

    assert_redirected_to achievers_url
  end
end
