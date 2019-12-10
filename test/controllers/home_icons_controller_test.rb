require 'test_helper'

class HomeIconsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_icon = home_icons(:one)
  end

  test "should get index" do
    get home_icons_url
    assert_response :success
  end

  test "should get new" do
    get new_home_icon_url
    assert_response :success
  end

  test "should create home_icon" do
    assert_difference('HomeIcon.count') do
      post home_icons_url, params: { home_icon: { icon_iamge: @home_icon.icon_iamge, icon_name: @home_icon.icon_name } }
    end

    assert_redirected_to home_icon_url(HomeIcon.last)
  end

  test "should show home_icon" do
    get home_icon_url(@home_icon)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_icon_url(@home_icon)
    assert_response :success
  end

  test "should update home_icon" do
    patch home_icon_url(@home_icon), params: { home_icon: { icon_iamge: @home_icon.icon_iamge, icon_name: @home_icon.icon_name } }
    assert_redirected_to home_icon_url(@home_icon)
  end

  test "should destroy home_icon" do
    assert_difference('HomeIcon.count', -1) do
      delete home_icon_url(@home_icon)
    end

    assert_redirected_to home_icons_url
  end
end
