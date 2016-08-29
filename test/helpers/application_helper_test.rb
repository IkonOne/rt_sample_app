require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test 'test full title' do
    # assert_equal 'Home | Ruby on Rails Tutorial Sample App', full_title 'Home'
    assert_equal 'Ruby on Rails Tutorial Sample App', full_title
    assert_equal 'Test | Ruby on Rails Tutorial Sample App', full_title('Test')
  end
end