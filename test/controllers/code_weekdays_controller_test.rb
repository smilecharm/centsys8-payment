require "test_helper"

class CodeWeekdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_weekday = code_weekdays(:one)
  end

  test "should get index" do
    get code_weekdays_url
    assert_response :success
  end

  test "should get new" do
    get new_code_weekday_url
    assert_response :success
  end

  test "should create code_weekday" do
    assert_difference('CodeWeekday.count') do
      post code_weekdays_url, params: { code_weekday: { content: @code_weekday.content, name: @code_weekday.name, priority: @code_weekday.priority, ref: @code_weekday.ref } }
    end

    assert_redirected_to code_weekday_url(CodeWeekday.last)
  end

  test "should show code_weekday" do
    get code_weekday_url(@code_weekday)
    assert_response :success
  end

  test "should get edit" do
    get edit_code_weekday_url(@code_weekday)
    assert_response :success
  end

  test "should update code_weekday" do
    patch code_weekday_url(@code_weekday), params: { code_weekday: { content: @code_weekday.content, name: @code_weekday.name, priority: @code_weekday.priority, ref: @code_weekday.ref } }
    assert_redirected_to code_weekday_url(@code_weekday)
  end

  test "should destroy code_weekday" do
    assert_difference('CodeWeekday.count', -1) do
      delete code_weekday_url(@code_weekday)
    end

    assert_redirected_to code_weekdays_url
  end
end
