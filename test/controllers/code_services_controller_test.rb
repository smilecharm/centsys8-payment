require "test_helper"

class CodeServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_service = code_services(:one)
  end

  test "should get index" do
    get code_services_url
    assert_response :success
  end

  test "should get new" do
    get new_code_service_url
    assert_response :success
  end

  test "should create code_service" do
    assert_difference('CodeService.count') do
      post code_services_url, params: { code_service: { contents: @code_service.contents, name: @code_service.name, priority: @code_service.priority, ref: @code_service.ref, unitprice: @code_service.unitprice } }
    end

    assert_redirected_to code_service_url(CodeService.last)
  end

  test "should show code_service" do
    get code_service_url(@code_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_service_url(@code_service)
    assert_response :success
  end

  test "should update code_service" do
    patch code_service_url(@code_service), params: { code_service: { contents: @code_service.contents, name: @code_service.name, priority: @code_service.priority, ref: @code_service.ref, unitprice: @code_service.unitprice } }
    assert_redirected_to code_service_url(@code_service)
  end

  test "should destroy code_service" do
    assert_difference('CodeService.count', -1) do
      delete code_service_url(@code_service)
    end

    assert_redirected_to code_services_url
  end
end
