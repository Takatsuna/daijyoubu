require 'test_helper'

class YouinjissekisControllerTest < ActionController::TestCase
  setup do
    @youinjisseki = youinjissekis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:youinjissekis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create youinjisseki" do
    assert_difference('Youinjisseki.count') do
      post :create, youinjisseki: { kadouhour: @youinjisseki.kadouhour, kadoumin: @youinjisseki.kadoumin, nengetsu: @youinjisseki.nengetsu, sagyouhoukoku_id: @youinjisseki.sagyouhoukoku_id, youinwariate_id: @youinjisseki.youinwariate_id }
    end

    assert_redirected_to youinjisseki_path(assigns(:youinjisseki))
  end

  test "should show youinjisseki" do
    get :show, id: @youinjisseki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @youinjisseki
    assert_response :success
  end

  test "should update youinjisseki" do
    patch :update, id: @youinjisseki, youinjisseki: { kadouhour: @youinjisseki.kadouhour, kadoumin: @youinjisseki.kadoumin, nengetsu: @youinjisseki.nengetsu, sagyouhoukoku_id: @youinjisseki.sagyouhoukoku_id, youinwariate_id: @youinjisseki.youinwariate_id }
    assert_redirected_to youinjisseki_path(assigns(:youinjisseki))
  end

  test "should destroy youinjisseki" do
    assert_difference('Youinjisseki.count', -1) do
      delete :destroy, id: @youinjisseki
    end

    assert_redirected_to youinjissekis_path
  end
end
