require 'test_helper'

class WebServiceControllerTest < ActionController::TestCase
  test "should get webservice" do
    get :webservice
    assert_response :success
  end

end
