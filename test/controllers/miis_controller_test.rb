require "test_helper"

class MiisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mii = miis(:one)
  end

  test "should get index" do
    get miis_url
    assert_response :success
  end

  test "should get new" do
    get new_mii_url
    assert_response :success
  end

  test "should create mii" do
    assert_difference("Mii.count") do
      post miis_url, params: { mii: { age: @mii.age, description: @mii.description, image: @mii.image, keyword: @mii.keyword, lastname: @mii.lastname, name: @mii.name, nickname: @mii.nickname, slogan: @mii.slogan } }
    end

    assert_redirected_to mii_url(Mii.last)
  end

  test "should show mii" do
    get mii_url(@mii)
    assert_response :success
  end

  test "should get edit" do
    get edit_mii_url(@mii)
    assert_response :success
  end

  test "should update mii" do
    patch mii_url(@mii), params: { mii: { age: @mii.age, description: @mii.description, image: @mii.image, keyword: @mii.keyword, lastname: @mii.lastname, name: @mii.name, nickname: @mii.nickname, slogan: @mii.slogan } }
    assert_redirected_to mii_url(@mii)
  end

  test "should destroy mii" do
    assert_difference("Mii.count", -1) do
      delete mii_url(@mii)
    end

    assert_redirected_to miis_url
  end
end
