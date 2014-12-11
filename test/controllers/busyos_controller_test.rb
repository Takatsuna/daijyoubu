require 'test_helper'

class BusyosControllerTest < ActionController::TestCase
  setup do
    @busyo = busyos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:busyos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create busyo" do
    assert_difference('Busyo.count') do
      post :create, busyo: { gl: @busyo.gl, name: @busyo.name }
    end

    assert_redirected_to busyo_path(assigns(:busyo))
  end

  test "should show busyo" do
    get :show, id: @busyo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @busyo
    assert_response :success
  end

  test "should update busyo" do
    patch :update, id: @busyo, busyo: { gl: @busyo.gl, name: @busyo.name }
    assert_redirected_to busyo_path(assigns(:busyo))
  end

  test "should destroy busyo" do
    assert_difference('Busyo.count', -1) do
      delete :destroy, id: @busyo
    end

    assert_redirected_to busyos_path
  end
end
