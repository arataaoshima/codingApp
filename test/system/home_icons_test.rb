require "application_system_test_case"

class HomeIconsTest < ApplicationSystemTestCase
  setup do
    @home_icon = home_icons(:one)
  end

  test "visiting the index" do
    visit home_icons_url
    assert_selector "h1", text: "Home Icons"
  end

  test "creating a Home icon" do
    visit home_icons_url
    click_on "New Home Icon"

    fill_in "Icon iamge", with: @home_icon.icon_iamge
    fill_in "Icon name", with: @home_icon.icon_name
    click_on "Create Home icon"

    assert_text "Home icon was successfully created"
    click_on "Back"
  end

  test "updating a Home icon" do
    visit home_icons_url
    click_on "Edit", match: :first

    fill_in "Icon iamge", with: @home_icon.icon_iamge
    fill_in "Icon name", with: @home_icon.icon_name
    click_on "Update Home icon"

    assert_text "Home icon was successfully updated"
    click_on "Back"
  end

  test "destroying a Home icon" do
    visit home_icons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home icon was successfully destroyed"
  end
end
