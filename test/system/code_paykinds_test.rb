require "application_system_test_case"

class CodePaykindsTest < ApplicationSystemTestCase
  setup do
    @code_paykind = code_paykinds(:one)
  end

  test "visiting the index" do
    visit code_paykinds_url
    assert_selector "h1", text: "Code Paykinds"
  end

  test "creating a Code paykind" do
    visit code_paykinds_url
    click_on "New Code Paykind"

    fill_in "Monthlysupport", with: @code_paykind.monthlysupport
    fill_in "Paykind", with: @code_paykind.paykind
    fill_in "Ref", with: @code_paykind.ref
    fill_in "Selfpay", with: @code_paykind.selfpay
    fill_in "Unitprice", with: @code_paykind.unitprice
    click_on "Create Code paykind"

    assert_text "Code paykind was successfully created"
    click_on "Back"
  end

  test "updating a Code paykind" do
    visit code_paykinds_url
    click_on "Edit", match: :first

    fill_in "Monthlysupport", with: @code_paykind.monthlysupport
    fill_in "Paykind", with: @code_paykind.paykind
    fill_in "Ref", with: @code_paykind.ref
    fill_in "Selfpay", with: @code_paykind.selfpay
    fill_in "Unitprice", with: @code_paykind.unitprice
    click_on "Update Code paykind"

    assert_text "Code paykind was successfully updated"
    click_on "Back"
  end

  test "destroying a Code paykind" do
    visit code_paykinds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code paykind was successfully destroyed"
  end
end
