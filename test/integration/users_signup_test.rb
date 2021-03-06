require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'should reject invalid user' do
    get signup_path
    assert_no_difference 'User.count' do
      post signup_path, params: { user: {
                                    name: "",
                                    email: "user@invalid",
                                    password: "foo",
                                    password_confirmation: "bar"
                                  }
                                }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
    assert_select 'form[action="/signup"]'
  end

  test 'should create new user' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: {
                                    name: "Example User",
                                    email: "example@email.com",
                                    password: "password",
                                    password_confirmation: "password"
                                  }
                                }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.empty?
    assert_select 'div.alert-success'
    assert logged_in?
  end
end
