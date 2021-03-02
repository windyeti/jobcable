require 'test_helper'

class VisitorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get visitor_index_url
    assert_response :success
  end

  test "should get hard_method" do
    get visitor_hard_method_url
    assert_response :success
  end

end
