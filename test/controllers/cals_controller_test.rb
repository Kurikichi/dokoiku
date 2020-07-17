require 'test_helper'

class CalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cals_index_url
    assert_response :success
  end

end
