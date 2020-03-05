require 'test_helper'

class ChildPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get child_posts_show_url
    assert_response :success
  end

end
