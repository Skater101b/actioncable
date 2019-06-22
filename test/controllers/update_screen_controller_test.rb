require 'test_helper'

class UpdateScreenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get update_screen_index_url
    assert_response :success
  end

end
