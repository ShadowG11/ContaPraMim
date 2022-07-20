require "test_helper"

class GainsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gains_index_url
    assert_response :success
  end
end
