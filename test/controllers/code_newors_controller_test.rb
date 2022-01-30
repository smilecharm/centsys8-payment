require "test_helper"

class CodeNeworsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_newor = code_newors(:one)
  end

  test "should get index" do
    get code_newors_url
    assert_response :success
  end

  test "should get new" do
    get new_code_newor_url
    assert_response :success
  end

  test "should create code_newor" do
    assert_difference('CodeNewor.count') do
      post code_newors_url, params: { code_newor: { content: @code_newor.content, name: @code_newor.name, priority: @code_newor.priority, ref: @code_newor.ref } }
    end

    assert_redirected_to code_newor_url(CodeNewor.last)
  end

  test "should show code_newor" do
    get code_newor_url(@code_newor)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_newor_url(@code_newor)
    assert_response :success
  end

  test "should update code_newor" do
    patch code_newor_url(@code_newor), params: { code_newor: { content: @code_newor.content, name: @code_newor.name, priority: @code_newor.priority, ref: @code_newor.ref } }
    assert_redirected_to code_newor_url(@code_newor)
  end

  test "should destroy code_newor" do
    assert_difference('CodeNewor.count', -1) do
      delete code_newor_url(@code_newor)
    end

    assert_redirected_to code_newors_url
  end
end
