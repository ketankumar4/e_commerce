require "test_helper"

class SellersControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get sellers_homepage_url
    assert_response :success
  end
end
