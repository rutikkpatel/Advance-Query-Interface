require "test_helper"

class LeavePlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leave_plans_index_url
    assert_response :success
  end

  test "should get edit" do
    get leave_plans_edit_url
    assert_response :success
  end

  test "should get new" do
    get leave_plans_new_url
    assert_response :success
  end

  test "should get show" do
    get leave_plans_show_url
    assert_response :success
  end
end
