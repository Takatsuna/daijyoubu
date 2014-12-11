require 'test_helper'

class PartnermembersControllerTest < ActionController::TestCase
  setup do
    @partnermember = partnermembers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partnermembers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partnermember" do
    assert_difference('Partnermember.count') do
      post :create, partnermember: { name: @partnermember.name, shimeicode: @partnermember.shimeicode }
    end

    assert_redirected_to partnermember_path(assigns(:partnermember))
  end

  test "should show partnermember" do
    get :show, id: @partnermember
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partnermember
    assert_response :success
  end

  test "should update partnermember" do
    patch :update, id: @partnermember, partnermember: { name: @partnermember.name, shimeicode: @partnermember.shimeicode }
    assert_redirected_to partnermember_path(assigns(:partnermember))
  end

  test "should destroy partnermember" do
    assert_difference('Partnermember.count', -1) do
      delete :destroy, id: @partnermember
    end

    assert_redirected_to partnermembers_path
  end
end
