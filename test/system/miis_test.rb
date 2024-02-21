require "application_system_test_case"

class MiisTest < ApplicationSystemTestCase
  setup do
    @mii = miis(:one)
  end

  test "visiting the index" do
    visit miis_url
    assert_selector "h1", text: "Miis"
  end

  test "should create mii" do
    visit miis_url
    click_on "New mii"

    fill_in "Age", with: @mii.age
    fill_in "Description", with: @mii.description
    fill_in "Image", with: @mii.image
    fill_in "Keyword", with: @mii.keyword
    fill_in "Lastname", with: @mii.lastname
    fill_in "Name", with: @mii.name
    fill_in "Nickname", with: @mii.nickname
    fill_in "Slogan", with: @mii.slogan
    click_on "Create Mii"

    assert_text "Mii was successfully created"
    click_on "Back"
  end

  test "should update Mii" do
    visit mii_url(@mii)
    click_on "Edit this mii", match: :first

    fill_in "Age", with: @mii.age
    fill_in "Description", with: @mii.description
    fill_in "Image", with: @mii.image
    fill_in "Keyword", with: @mii.keyword
    fill_in "Lastname", with: @mii.lastname
    fill_in "Name", with: @mii.name
    fill_in "Nickname", with: @mii.nickname
    fill_in "Slogan", with: @mii.slogan
    click_on "Update Mii"

    assert_text "Mii was successfully updated"
    click_on "Back"
  end

  test "should destroy Mii" do
    visit mii_url(@mii)
    click_on "Destroy this mii", match: :first

    assert_text "Mii was successfully destroyed"
  end
end
