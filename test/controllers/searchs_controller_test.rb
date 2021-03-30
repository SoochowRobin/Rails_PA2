require "test_helper"

class SearchsControllerTest < ActionDispatch::IntegrationTest
  test "should get searchR" do
    get searchs_searchR_url
    assert_response :success
  end

  test "should get displayR" do
    get searchs_displayR_url
    assert_response :success
  end
end
