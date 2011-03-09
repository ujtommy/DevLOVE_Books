require 'test_helper'

class CrossreviewtopControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
