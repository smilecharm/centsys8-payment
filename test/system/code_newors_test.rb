require "application_system_test_case"

class CodeNeworsTest < ApplicationSystemTestCase
  setup do
    @code_newor = code_newors(:one)
  end

  test "visiting the index" do
    visit code_newors_url
    assert_selector "h1", text: "Code Newors"
  end

  test "creating a Code newor" do
    visit code_newors_url
    click_on "New Code Newor"

    fill_in "Content", with: @code_newor.content
    fill_in "Name", with: @code_newor.name
    fill_in "Priority", with: @code_newor.priority
    fill_in "Ref", with: @code_newor.ref
    click_on "Create Code newor"

    assert_text "Code newor was successfully created"
    click_on "Back"
  end

  test "updating a Code newor" do
    visit code_newors_url
    click_on "Edit", match: :first

    fill_in "Content", with: @code_newor.content
    fill_in "Name", with: @code_newor.name
    fill_in "Priority", with: @code_newor.priority
    fill_in "Ref", with: @code_newor.ref
    click_on "Update Code newor"

    assert_text "Code newor was successfully updated"
    click_on "Back"
  end

  test "destroying a Code newor" do
    visit code_newors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code newor was successfully destroyed"
  end
end
