require 'test_helper'

class Admins::ChildPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_child_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_child_posts_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_child_posts_edit_url
    assert_response :success
  end

end
