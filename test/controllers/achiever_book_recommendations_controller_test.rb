require "test_helper"

class AchieverBookRecommendationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @achiever_book_recommendation = achiever_book_recommendations(:one)
  end

  test "should get index" do
    get achiever_book_recommendations_url
    assert_response :success
  end

  test "should get new" do
    get new_achiever_book_recommendation_url
    assert_response :success
  end

  test "should create achiever_book_recommendation" do
    assert_difference("AchieverBookRecommendation.count") do
      post achiever_book_recommendations_url, params: { achiever_book_recommendation: { achiever_id: @achiever_book_recommendation.achiever_id, book_recommendation_id: @achiever_book_recommendation.book_recommendation_id } }
    end

    assert_redirected_to achiever_book_recommendation_url(AchieverBookRecommendation.last)
  end

  test "should show achiever_book_recommendation" do
    get achiever_book_recommendation_url(@achiever_book_recommendation)
    assert_response :success
  end

  test "should get edit" do
    get edit_achiever_book_recommendation_url(@achiever_book_recommendation)
    assert_response :success
  end

  test "should update achiever_book_recommendation" do
    patch achiever_book_recommendation_url(@achiever_book_recommendation), params: { achiever_book_recommendation: { achiever_id: @achiever_book_recommendation.achiever_id, book_recommendation_id: @achiever_book_recommendation.book_recommendation_id } }
    assert_redirected_to achiever_book_recommendation_url(@achiever_book_recommendation)
  end

  test "should destroy achiever_book_recommendation" do
    assert_difference("AchieverBookRecommendation.count", -1) do
      delete achiever_book_recommendation_url(@achiever_book_recommendation)
    end

    assert_redirected_to achiever_book_recommendations_url
  end
end
