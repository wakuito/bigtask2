require "test_helper"

class XclonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get xclones_index_url
    assert_response :success
  end
end
