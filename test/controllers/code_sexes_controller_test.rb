require "test_helper"

class CodeSexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_sex = code_sexes(:one)
  end

  test "should get index" do
    get code_sexes_url
    assert_response :success
  end

  test "should get new" do
    get new_code_sex_url
    assert_response :success
  end

  test "should create code_sex" do
    assert_difference('CodeSex.count') do
      post code_sexes_url, params: { code_sex: { content: @code_sex.content, no: @code_sex.no, priority: @code_sex.priority, ref: @code_sex.ref, sex: @code_sex.sex } }
    end

    assert_redirected_to code_sex_url(CodeSex.last)
  end

  test "should show code_sex" do
    get code_sex_url(@code_sex)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_sex_url(@code_sex)
    assert_response :success
  end

  test "should update code_sex" do
    patch code_sex_url(@code_sex), params: { code_sex: { content: @code_sex.content, no: @code_sex.no, priority: @code_sex.priority, ref: @code_sex.ref, sex: @code_sex.sex } }
    assert_redirected_to code_sex_url(@code_sex)
  end

  test "should destroy code_sex" do
    assert_difference('CodeSex.count', -1) do
      delete code_sex_url(@code_sex)
    end

    assert_redirected_to code_sexes_url
  end
end
