require "application_system_test_case"

class CodeCentersTest < ApplicationSystemTestCase
  setup do
    @code_center = code_centers(:one)
  end

  test "visiting the index" do
    visit code_centers_url
    assert_selector "h1", text: "Code Centers"
  end

  test "creating a Code center" do
    visit code_centers_url
    click_on "New Code Center"

    fill_in "Address", with: @code_center.address
    fill_in "Name", with: @code_center.name
    fill_in "Priority", with: @code_center.priority
    fill_in "Ref", with: @code_center.ref
    fill_in "Telno", with: @code_center.telno
    click_on "Create Code center"

    assert_text "Code center was successfully created"
    click_on "Back"
  end

  test "updating a Code center" do
    visit code_centers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @code_center.address
    fill_in "Name", with: @code_center.name
    fill_in "Priority", with: @code_center.priority
    fill_in "Ref", with: @code_center.ref
    fill_in "Telno", with: @code_center.telno
    click_on "Update Code center"

    assert_text "Code center was successfully updated"
    click_on "Back"
  end

  test "destroying a Code center" do
    visit code_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code center was successfully destroyed"
  end
end
