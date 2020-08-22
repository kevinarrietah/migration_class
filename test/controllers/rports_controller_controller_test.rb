require 'test_helper'

class RportsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rports_controller_index_url
    assert_response :success
  end

  test "should get create" do
    get rports_controller_create_url
    assert_response :success
  end

end
