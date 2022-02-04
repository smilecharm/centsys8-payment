require "application_system_test_case"

class CodePaymethodsTest < ApplicationSystemTestCase
  setup do
    @code_paymethod = code_paymethods(:one)
  end

  test "visiting the index" do
    visit code_paymethods_url
    assert_selector "h1", text: "Code Paymethods"
  end

  test "creating a Code paymethod" do
    visit code_paymethods_url
    click_on "New Code Paymethod"

    fill_in "Content", with: @code_paymethod.content
    fill_in "Memo", with: @code_paymethod.memo
    fill_in "Name", with: @code_paymethod.name
    fill_in "Priority", with: @code_paymethod.priority
    fill_in "Ref", with: @code_paymethod.ref
    click_on "Create Code paymethod"

    assert_text "Code paymethod was successfully created"
    click_on "Back"
  end

  test "updating a Code paymethod" do
    visit code_paymethods_url
    click_on "Edit", match: :first

    fill_in "Content", with: @code_paymethod.content
    fill_in "Memo", with: @code_paymethod.memo
    fill_in "Name", with: @code_paymethod.name
    fill_in "Priority", with: @code_paymethod.priority
    fill_in "Ref", with: @code_paymethod.ref
    click_on "Update Code paymethod"

    assert_text "Code paymethod was successfully updated"
    click_on "Back"
  end

  test "destroying a Code paymethod" do
    visit code_paymethods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code paymethod was successfully destroyed"
  end
end
