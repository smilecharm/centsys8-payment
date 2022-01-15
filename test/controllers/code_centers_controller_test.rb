require "test_helper"

class CodeCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_center = code_centers(:one)
  end

  test "should get index" do
    get code_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_code_center_url
    assert_response :success
  end

  test "should create code_center" do
    assert_difference('CodeCenter.count') do
      post code_centers_url, params: { code_center: { address: @code_center.address, name: @code_center.name, priority: @code_center.priority, ref: @code_center.ref, telno: @code_center.telno } }
    end

    assert_redirected_to code_center_url(CodeCenter.last)
  end

  test "should show code_center" do
    get code_center_url(@code_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_center_url(@code_center)
    assert_response :success
  end

  test "should update code_center" do
    patch code_center_url(@code_center), params: { code_center: { address: @code_center.address, name: @code_center.name, priority: @code_center.priority, ref: @code_center.ref, telno: @code_center.telno } }
    assert_redirected_to code_center_url(@code_center)
  end

  test "should destroy code_center" do
    assert_difference('CodeCenter.count', -1) do
      delete code_center_url(@code_center)
    end

    assert_redirected_to code_centers_url
  end
end
