require 'test_helper'

class UserShowTest < ActionDispatch::IntegrationTest
  def setup
    @activated = users(:michael)
    @non_activated = users(:lana)
  end

  test "shows profile page for activated user" do
    get user_path(@activated)
    assert_template 'users/show'
  end

  test 'redirects to root for non activated user' do
    get user_path(@non_activated)
    assert_redirected_to root_url
  end
end
