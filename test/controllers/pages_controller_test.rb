require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get whoweare" do
    get pages_whoweare_url
    assert_response :success
  end

  test "should get whatweoffer" do
    get pages_whatweoffer_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

end
