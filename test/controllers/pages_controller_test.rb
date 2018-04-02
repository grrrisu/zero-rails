require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get home" do
    get root_path
    assert_response :success
    assert_select '#login-link', 'login'
  end

  test "should see logout link" do
    sign_in users(:john_snow)
    get root_path
    assert_response :success
    assert_select '#logout-link', 'logout'
  end

end
