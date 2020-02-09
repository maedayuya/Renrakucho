require 'test_helper'

class Admins::ChildrenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_children_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_children_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_children_edit_url
    assert_response :success
  end

end
