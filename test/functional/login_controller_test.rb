require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logup" do
    get :logup
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

end
