require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get Index" do
    get :Index
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get signinstudent" do
    get :signinstudent
    assert_response :success
  end

  test "should get signinadmin" do
    get :signinadmin
    assert_response :success
  end

end
