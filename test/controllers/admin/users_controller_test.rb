require 'test_helper'

class Admin::UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should be redircted" do
    get admin_users_path
    assert_redirected_to new_user_session_path
  end

  test "should see users" do
    sign_in users(:john_snow)
    get admin_users_path
    assert_response :success
    assert_select 'h1', 'Users'
  end

  test "should not see a single user" do
    sign_in users(:john_snow)
    get admin_user_path(users(:ned_stark))
    assert_redirected_to root_path
  end

end
