require "test_helper"

class StartsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get starts_login_url
    assert_response :success
  end

  test "should get signup" do
    get starts_signup_url
    assert_response :success
  end
end
