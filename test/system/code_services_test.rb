require "application_system_test_case"

class CodeServicesTest < ApplicationSystemTestCase
  setup do
    @code_service = code_services(:one)
  end

  test "visiting the index" do
    visit code_services_url
    assert_selector "h1", text: "Code Services"
  end

  test "creating a Code service" do
    visit code_services_url
    click_on "New Code Service"

    fill_in "Contents", with: @code_service.contents
    fill_in "Name", with: @code_service.name
    fill_in "Priority", with: @code_service.priority
    fill_in "Ref", with: @code_service.ref
    fill_in "Unitprice", with: @code_service.unitprice
    click_on "Create Code service"

    assert_text "Code service was successfully created"
    click_on "Back"
  end

  test "updating a Code service" do
    visit code_services_url
    click_on "Edit", match: :first

    fill_in "Contents", with: @code_service.contents
    fill_in "Name", with: @code_service.name
    fill_in "Priority", with: @code_service.priority
    fill_in "Ref", with: @code_service.ref
    fill_in "Unitprice", with: @code_service.unitprice
    click_on "Update Code service"

    assert_text "Code service was successfully updated"
    click_on "Back"
  end

  test "destroying a Code service" do
    visit code_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code service was successfully destroyed"
  end
end
