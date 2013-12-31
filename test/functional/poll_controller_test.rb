require 'test_helper'

class PollControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get give" do
    get :give
    assert_response :success
  end

end
