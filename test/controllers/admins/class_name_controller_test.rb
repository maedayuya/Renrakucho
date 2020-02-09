require 'test_helper'

class Admins::ClassNameControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_class_name_new_url
    assert_response :success
  end

end
