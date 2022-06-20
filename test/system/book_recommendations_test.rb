require "application_system_test_case"

class BookRecommendationsTest < ApplicationSystemTestCase
  setup do
    @book_recommendation = book_recommendations(:one)
  end

  test "visiting the index" do
    visit book_recommendations_url
    assert_selector "h1", text: "Book recommendations"
  end

  test "should create book recommendation" do
    visit book_recommendations_url
    click_on "New book recommendation"

    fill_in "Area", with: @book_recommendation.area
    fill_in "Author", with: @book_recommendation.author
    fill_in "Title", with: @book_recommendation.title
    click_on "Create Book recommendation"

    assert_text "Book recommendation was successfully created"
    click_on "Back"
  end

  test "should update Book recommendation" do
    visit book_recommendation_url(@book_recommendation)
    click_on "Edit this book recommendation", match: :first

    fill_in "Area", with: @book_recommendation.area
    fill_in "Author", with: @book_recommendation.author
    fill_in "Title", with: @book_recommendation.title
    click_on "Update Book recommendation"

    assert_text "Book recommendation was successfully updated"
    click_on "Back"
  end

  test "should destroy Book recommendation" do
    visit book_recommendation_url(@book_recommendation)
    click_on "Destroy this book recommendation", match: :first

    assert_text "Book recommendation was successfully destroyed"
  end
end
