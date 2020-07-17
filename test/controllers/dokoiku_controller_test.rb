require 'test_helper'

class DokoikuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dokoiku_index_url
    assert_response :success
  end

end
