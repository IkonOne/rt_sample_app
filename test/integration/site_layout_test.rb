require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test 'layout links' do
    get root_path
    assert_select 'title', full_title('Home')
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
  end

  test 'home page' do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'title', full_title('Home')
  end

  test 'about page' do
    get about_path
    assert_template 'static_pages/about'
    assert_select 'title', full_title('About')
  end

  test 'contact page' do
    get contact_path
    assert_template 'static_pages/contact'
    assert_select 'title', full_title('Contact')
  end

  test 'help page' do
    get help_path
    assert_template 'static_pages/help'
    assert_select 'title', full_title('Help')
  end

  test 'sign up page' do
    get signup_path
    assert_response :success

    assert_template 'users/new'
    assert_select 'title', full_title('Sign up')
  end
end
