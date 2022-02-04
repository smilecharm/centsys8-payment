require "test_helper"

class CodePaymethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_paymethod = code_paymethods(:one)
  end

  test "should get index" do
    get code_paymethods_url
    assert_response :success
  end

  test "should get new" do
    get new_code_paymethod_url
    assert_response :success
  end

  test "should create code_paymethod" do
    assert_difference('CodePaymethod.count') do
      post code_paymethods_url, params: { code_paymethod: { content: @code_paymethod.content, memo: @code_paymethod.memo, name: @code_paymethod.name, priority: @code_paymethod.priority, ref: @code_paymethod.ref } }
    end

    assert_redirected_to code_paymethod_url(CodePaymethod.last)
  end

  test "should show code_paymethod" do
    get code_paymethod_url(@code_paymethod)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_paymethod_url(@code_paymethod)
    assert_response :success
  end

  test "should update code_paymethod" do
    patch code_paymethod_url(@code_paymethod), params: { code_paymethod: { content: @code_paymethod.content, memo: @code_paymethod.memo, name: @code_paymethod.name, priority: @code_paymethod.priority, ref: @code_paymethod.ref } }
    assert_redirected_to code_paymethod_url(@code_paymethod)
  end

  test "should destroy code_paymethod" do
    assert_difference('CodePaymethod.count', -1) do
      delete code_paymethod_url(@code_paymethod)
    end

    assert_redirected_to code_paymethods_url
  end
end
