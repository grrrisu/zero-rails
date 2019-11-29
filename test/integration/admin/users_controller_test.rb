require 'test_helper'

class Admin::UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "a guest should be redircted" do
    get admin_users_path
    assert_redirected_to new_user_session_path
  end

  test "a user can see all users" do
    sign_in users(:jon_snow)
    get admin_users_path
    assert_response :success
    assert_select 'h1', 'Users'
  end

  test "a user can see details of another user" do
    sign_in users(:jon_snow)
    get admin_user_path(users(:ned_stark))
    assert_response :success
    assert_select 'h1', 'User'
  end

  test "a user can create a new user" do
    sign_in users(:jon_snow)
    get new_admin_user_path
    assert_response :success

    assert_select 'h1', 'Create User'
    post admin_users_path(params: {
      user:{
        email: 'catelyn.stark@example.com',
        password: 'test123',
        password_confirmation: 'test123'
      }
    })

    follow_redirect!
    assert_response :success
    assert_select 'td', 'catelyn.stark@example.com'
  end

  test "a user can not edit another user" do
    sign_in users(:jon_snow)
    get edit_admin_user_path(users(:ned_stark))
    assert_redirected_to root_path
  end

  test "a user can edit himself" do
    sign_in users(:jon_snow)
    get edit_admin_user_path(users(:jon_snow))
    assert_response :success

    assert_select 'h1', 'Edit User'
    put admin_user_path(users(:jon_snow), params: {
      user:{
        email: 'jonny.snow@example.com'
      }
    })

    follow_redirect!
    assert_response :success
    assert_select 'td', 'jonny.snow@example.com'
  end

  test "a user can delete another user" do
    sign_in users(:jon_snow)
    delete admin_user_path(users(:ned_stark))
    follow_redirect!
    assert_response :success
    assert !response.body.include?("ned.stark")
  end

end
