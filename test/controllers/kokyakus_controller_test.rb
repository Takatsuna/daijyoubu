require 'test_helper'

class KokyakusControllerTest < ActionController::TestCase
  setup do
    @kokyaku = kokyakus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kokyakus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kokyaku" do
    assert_difference('Kokyaku.count') do
      post :create, kokyaku: { name: @kokyaku.name }
    end

    assert_redirected_to kokyaku_path(assigns(:kokyaku))
  end

  test "should show kokyaku" do
    get :show, id: @kokyaku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kokyaku
    assert_response :success
  end

  test "should update kokyaku" do
    patch :update, id: @kokyaku, kokyaku: { name: @kokyaku.name }
    assert_redirected_to kokyaku_path(assigns(:kokyaku))
  end

  test "should destroy kokyaku" do
    assert_difference('Kokyaku.count', -1) do
      delete :destroy, id: @kokyaku
    end

    assert_redirected_to kokyakus_path
  end
end
