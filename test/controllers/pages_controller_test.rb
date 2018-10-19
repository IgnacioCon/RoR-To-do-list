require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get signup" do
    get pages_signup_url
    assert_response :success
  end

  test "should get lists" do
    get pages_lists_url
    assert_response :success
  end

  test "should get indlist" do
    get pages_indlist_url
    assert_response :success
  end

  test "should get profile" do
    get pages_profile_url
    assert_response :success
  end

end
