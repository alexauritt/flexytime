require 'test_helper'

class GreetsControllerTest < ActionController::TestCase
  setup do
    @greet = greets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:greets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create greet" do
    assert_difference('Greet.count') do
      post :create, greet: {  }
    end

    assert_redirected_to greet_path(assigns(:greet))
  end

  test "should show greet" do
    get :show, id: @greet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @greet
    assert_response :success
  end

  test "should update greet" do
    put :update, id: @greet, greet: {  }
    assert_redirected_to greet_path(assigns(:greet))
  end

  test "should destroy greet" do
    assert_difference('Greet.count', -1) do
      delete :destroy, id: @greet
    end

    assert_redirected_to greets_path
  end
end
