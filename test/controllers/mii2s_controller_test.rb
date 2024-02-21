require "test_helper"

class Mii2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mii2 = mii2s(:one)
  end

  test "should get index" do
    get mii2s_url
    assert_response :success
  end

  test "should get new" do
    get new_mii2_url
    assert_response :success
  end

  test "should create mii2" do
    assert_difference("Mii2.count") do
      post mii2s_url, params: { mii2: { age: @mii2.age, description: @mii2.description, image: @mii2.image, keyword: @mii2.keyword, lastname: @mii2.lastname, name: @mii2.name, nickname: @mii2.nickname, slogan: @mii2.slogan } }
    end

    assert_redirected_to mii2_url(Mii2.last)
  end

  test "should show mii2" do
    get mii2_url(@mii2)
    assert_response :success
  end

  test "should get edit" do
    get edit_mii2_url(@mii2)
    assert_response :success
  end

  test "should update mii2" do
    patch mii2_url(@mii2), params: { mii2: { age: @mii2.age, description: @mii2.description, image: @mii2.image, keyword: @mii2.keyword, lastname: @mii2.lastname, name: @mii2.name, nickname: @mii2.nickname, slogan: @mii2.slogan } }
    assert_redirected_to mii2_url(@mii2)
  end

  test "should destroy mii2" do
    assert_difference("Mii2.count", -1) do
      delete mii2_url(@mii2)
    end

    assert_redirected_to mii2s_url
  end
end
