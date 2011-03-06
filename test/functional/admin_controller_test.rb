require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logut" do
    get :logut
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
