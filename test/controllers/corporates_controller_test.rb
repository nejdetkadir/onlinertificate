require "test_helper"

class CorporatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get corporates_index_url
    assert_response :success
  end
end
