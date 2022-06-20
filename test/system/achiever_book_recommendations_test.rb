require "application_system_test_case"

class AchieverBookRecommendationsTest < ApplicationSystemTestCase
  setup do
    @achiever_book_recommendation = achiever_book_recommendations(:one)
  end

  test "visiting the index" do
    visit achiever_book_recommendations_url
    assert_selector "h1", text: "Achiever book recommendations"
  end

  test "should create achiever book recommendation" do
    visit achiever_book_recommendations_url
    click_on "New achiever book recommendation"

    fill_in "Achiever", with: @achiever_book_recommendation.achiever_id
    fill_in "Book recommendation", with: @achiever_book_recommendation.book_recommendation_id
    click_on "Create Achiever book recommendation"

    assert_text "Achiever book recommendation was successfully created"
    click_on "Back"
  end

  test "should update Achiever book recommendation" do
    visit achiever_book_recommendation_url(@achiever_book_recommendation)
    click_on "Edit this achiever book recommendation", match: :first

    fill_in "Achiever", with: @achiever_book_recommendation.achiever_id
    fill_in "Book recommendation", with: @achiever_book_recommendation.book_recommendation_id
    click_on "Update Achiever book recommendation"

    assert_text "Achiever book recommendation was successfully updated"
    click_on "Back"
  end

  test "should destroy Achiever book recommendation" do
    visit achiever_book_recommendation_url(@achiever_book_recommendation)
    click_on "Destroy this achiever book recommendation", match: :first

    assert_text "Achiever book recommendation was successfully destroyed"
  end
end
