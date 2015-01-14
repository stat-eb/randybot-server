require 'test_helper'

class JoysticksControllerTest < ActionController::TestCase
  setup do
    @joystick = joysticks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joysticks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joystick" do
    assert_difference('Joystick.count') do
      post :create, joystick: { x: @joystick.x, y: @joystick.y }
    end

    assert_redirected_to joystick_path(assigns(:joystick))
  end

  test "should show joystick" do
    get :show, id: @joystick
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joystick
    assert_response :success
  end

  test "should update joystick" do
    patch :update, id: @joystick, joystick: { x: @joystick.x, y: @joystick.y }
    assert_redirected_to joystick_path(assigns(:joystick))
  end

  test "should destroy joystick" do
    assert_difference('Joystick.count', -1) do
      delete :destroy, id: @joystick
    end

    assert_redirected_to joysticks_path
  end
end
