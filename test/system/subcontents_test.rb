require "application_system_test_case"

class SubcontentsTest < ApplicationSystemTestCase
  setup do
    @subcontent = subcontents(:one)
  end

  test "visiting the index" do
    visit subcontents_url
    assert_selector "h1", text: "Subcontents"
  end

  test "creating a Subcontent" do
    visit subcontents_url
    click_on "New Subcontent"

    fill_in "Article", with: @subcontent.article_id
    fill_in "Name", with: @subcontent.name
    fill_in "Order", with: @subcontent.order
    check "Type" if @subcontent.type
    click_on "Create Subcontent"

    assert_text "Subcontent was successfully created"
    click_on "Back"
  end

  test "updating a Subcontent" do
    visit subcontents_url
    click_on "Edit", match: :first

    fill_in "Article", with: @subcontent.article_id
    fill_in "Name", with: @subcontent.name
    fill_in "Order", with: @subcontent.order
    check "Type" if @subcontent.type
    click_on "Update Subcontent"

    assert_text "Subcontent was successfully updated"
    click_on "Back"
  end

  test "destroying a Subcontent" do
    visit subcontents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subcontent was successfully destroyed"
  end
end
