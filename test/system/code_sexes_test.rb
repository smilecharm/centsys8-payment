require "application_system_test_case"

class CodeSexesTest < ApplicationSystemTestCase
  setup do
    @code_sex = code_sexes(:one)
  end

  test "visiting the index" do
    visit code_sexes_url
    assert_selector "h1", text: "Code Sexes"
  end

  test "creating a Code sex" do
    visit code_sexes_url
    click_on "New Code Sex"

    fill_in "Content", with: @code_sex.content
    fill_in "No", with: @code_sex.no
    fill_in "Priority", with: @code_sex.priority
    fill_in "Ref", with: @code_sex.ref
    fill_in "Sex", with: @code_sex.sex
    click_on "Create Code sex"

    assert_text "Code sex was successfully created"
    click_on "Back"
  end

  test "updating a Code sex" do
    visit code_sexes_url
    click_on "Edit", match: :first

    fill_in "Content", with: @code_sex.content
    fill_in "No", with: @code_sex.no
    fill_in "Priority", with: @code_sex.priority
    fill_in "Ref", with: @code_sex.ref
    fill_in "Sex", with: @code_sex.sex
    click_on "Update Code sex"

    assert_text "Code sex was successfully updated"
    click_on "Back"
  end

  test "destroying a Code sex" do
    visit code_sexes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Code sex was successfully destroyed"
  end
end
