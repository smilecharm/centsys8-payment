require "test_helper"

class CodePaykindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_paykind = code_paykinds(:one)
  end

  test "should get index" do
    get code_paykinds_url
    assert_response :success
  end

  test "should get new" do
    get new_code_paykind_url
    assert_response :success
  end

  test "should create code_paykind" do
    assert_difference('CodePaykind.count') do
      post code_paykinds_url, params: { code_paykind: { monthlysupport: @code_paykind.monthlysupport, paykind: @code_paykind.paykind, ref: @code_paykind.ref, selfpay: @code_paykind.selfpay, unitprice: @code_paykind.unitprice } }
    end

    assert_redirected_to code_paykind_url(CodePaykind.last)
  end

  test "should show code_paykind" do
    get code_paykind_url(@code_paykind)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_paykind_url(@code_paykind)
    assert_response :success
  end

  test "should update code_paykind" do
    patch code_paykind_url(@code_paykind), params: { code_paykind: { monthlysupport: @code_paykind.monthlysupport, paykind: @code_paykind.paykind, ref: @code_paykind.ref, selfpay: @code_paykind.selfpay, unitprice: @code_paykind.unitprice } }
    assert_redirected_to code_paykind_url(@code_paykind)
  end

  test "should destroy code_paykind" do
    assert_difference('CodePaykind.count', -1) do
      delete code_paykind_url(@code_paykind)
    end

    assert_redirected_to code_paykinds_url
  end
end
