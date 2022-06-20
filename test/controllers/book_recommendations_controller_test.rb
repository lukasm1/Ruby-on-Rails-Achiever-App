require "test_helper"

class BookRecommendationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_recommendation = book_recommendations(:one)
  end

  test "should get index" do
    get book_recommendations_url
    assert_response :success
  end

  test "should get new" do
    get new_book_recommendation_url
    assert_response :success
  end

  test "should create book_recommendation" do
    assert_difference("BookRecommendation.count") do
      post book_recommendations_url, params: { book_recommendation: { area: @book_recommendation.area, author: @book_recommendation.author, title: @book_recommendation.title } }
    end

    assert_redirected_to book_recommendation_url(BookRecommendation.last)
  end

  test "should show book_recommendation" do
    get book_recommendation_url(@book_recommendation)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_recommendation_url(@book_recommendation)
    assert_response :success
  end

  test "should update book_recommendation" do
    patch book_recommendation_url(@book_recommendation), params: { book_recommendation: { area: @book_recommendation.area, author: @book_recommendation.author, title: @book_recommendation.title } }
    assert_redirected_to book_recommendation_url(@book_recommendation)
  end

  test "should destroy book_recommendation" do
    assert_difference("BookRecommendation.count", -1) do
      delete book_recommendation_url(@book_recommendation)
    end

    assert_redirected_to book_recommendations_url
  end
end
