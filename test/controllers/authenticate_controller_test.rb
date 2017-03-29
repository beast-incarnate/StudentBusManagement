require 'test_helper'

class AuthenticateControllerTest < ActionController::TestCase
  test "should get signinstudent" do
    get :signinstudent
    assert_response :success
  end

  test "should get signinadmin" do
    get :signinadmin
    assert_response :success
  end

end
