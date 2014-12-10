require 'test_helper'

class JyucyusControllerTest < ActionController::TestCase
  setup do
    @jyucyu = jyucyus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jyucyus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jyucyu" do
    assert_difference('Jyucyu.count') do
      post :create, jyucyu: { end: @jyucyu.end, keiyakusyubetsu: @jyucyu.keiyakusyubetsu, kenmei: @jyucyu.kenmei, kokyaku_id: @jyucyu.kokyaku_id, pjcode: @jyucyu.pjcode, pm: @jyucyu.pm, start: @jyucyu.start, tantouteam: @jyucyu.tantouteam }
    end

    assert_redirected_to jyucyu_path(assigns(:jyucyu))
  end

  test "should show jyucyu" do
    get :show, id: @jyucyu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jyucyu
    assert_response :success
  end

  test "should update jyucyu" do
    patch :update, id: @jyucyu, jyucyu: { end: @jyucyu.end, keiyakusyubetsu: @jyucyu.keiyakusyubetsu, kenmei: @jyucyu.kenmei, kokyaku_id: @jyucyu.kokyaku_id, pjcode: @jyucyu.pjcode, pm: @jyucyu.pm, start: @jyucyu.start, tantouteam: @jyucyu.tantouteam }
    assert_redirected_to jyucyu_path(assigns(:jyucyu))
  end

  test "should destroy jyucyu" do
    assert_difference('Jyucyu.count', -1) do
      delete :destroy, id: @jyucyu
    end

    assert_redirected_to jyucyus_path
  end
end
