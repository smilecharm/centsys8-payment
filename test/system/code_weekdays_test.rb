require "application_system_test_case"

class CodeWeekdaysTest < ApplicationSystemTestCase
  setup do
    @code_weekday = code_weekdays(:one)
  end

  test "visiting the index" do
    visit code_weekdays_url
    assert_selector "h1", text: "Code Weekdays"
  end

  test "creating a Code weekday" do
    visit code_weekdays_url
    click_on "New Code Weekday"

    fill_in "Content", with: @code_weekday.content
    fill_in "Name", with: @code_weekday.name
    fill_in "Priority", with: @code_weekday.priority
    fill_in "Ref", with: @code_weekday.ref
    click_on "Create Code weekday"

    assert_text "Code weekday was successfully created"
    click_on "Back"
  end

  test "updating a Code weekday" do
    visit code_weekdays_url
    click_on "Edit", match: :first

    fill_in "Content", with: @code_weekday.content
    fill_in "Name", with: @code_weekday.name
    fill_in "Priority", with: @code_weekday.priority
    fill_in "Ref", with: @code_weekday.ref
    click_on "Update Code weekday"

    assert_text "Code weekday was successfully updated"
    click_on "Back"
  end

  test "destroying a Code weekday" do
    visit code_weekdays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code weekday was successfully destroyed"
  end
end
