require 'test_helper'

class MethodControllerTest < ActionDispatch::IntegrationTest
  test "should get wellcome" do
    get method_wellcome_url
    assert_response :success
  end

end
