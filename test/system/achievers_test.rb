require "application_system_test_case"

class AchieversTest < ApplicationSystemTestCase
  setup do
    @achiever = achievers(:one)
  end

  test "visiting the index" do
    visit achievers_url
    assert_selector "h1", text: "Achievers"
  end

  test "should create achiever" do
    visit achievers_url
    click_on "New achiever"

    fill_in "Area of expertise", with: @achiever.area_of_expertise
    fill_in "Name", with: @achiever.name
    click_on "Create Achiever"

    assert_text "Achiever was successfully created"
    click_on "Back"
  end

  test "should update Achiever" do
    visit achiever_url(@achiever)
    click_on "Edit this achiever", match: :first

    fill_in "Area of expertise", with: @achiever.area_of_expertise
    fill_in "Name", with: @achiever.name
    click_on "Update Achiever"

    assert_text "Achiever was successfully updated"
    click_on "Back"
  end

  test "should destroy Achiever" do
    visit achiever_url(@achiever)
    click_on "Destroy this achiever", match: :first

    assert_text "Achiever was successfully destroyed"
  end
end
