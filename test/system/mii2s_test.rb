require "application_system_test_case"

class Mii2sTest < ApplicationSystemTestCase
  setup do
    @mii2 = mii2s(:one)
  end

  test "visiting the index" do
    visit mii2s_url
    assert_selector "h1", text: "Mii2s"
  end

  test "should create mii2" do
    visit mii2s_url
    click_on "New mii2"

    fill_in "Age", with: @mii2.age
    fill_in "Description", with: @mii2.description
    fill_in "Image", with: @mii2.image
    fill_in "Keyword", with: @mii2.keyword
    fill_in "Lastname", with: @mii2.lastname
    fill_in "Name", with: @mii2.name
    fill_in "Nickname", with: @mii2.nickname
    fill_in "Slogan", with: @mii2.slogan
    click_on "Create Mii2"

    assert_text "Mii2 was successfully created"
    click_on "Back"
  end

  test "should update Mii2" do
    visit mii2_url(@mii2)
    click_on "Edit this mii2", match: :first

    fill_in "Age", with: @mii2.age
    fill_in "Description", with: @mii2.description
    fill_in "Image", with: @mii2.image
    fill_in "Keyword", with: @mii2.keyword
    fill_in "Lastname", with: @mii2.lastname
    fill_in "Name", with: @mii2.name
    fill_in "Nickname", with: @mii2.nickname
    fill_in "Slogan", with: @mii2.slogan
    click_on "Update Mii2"

    assert_text "Mii2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Mii2" do
    visit mii2_url(@mii2)
    click_on "Destroy this mii2", match: :first

    assert_text "Mii2 was successfully destroyed"
  end
end
