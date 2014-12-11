require 'test_helper'

class YouinwariatesControllerTest < ActionController::TestCase
  setup do
    @youinwariate = youinwariates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:youinwariates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create youinwariate" do
    assert_difference('Youinwariate.count') do
      post :create, youinwariate: { itakuhaken_id: @youinwariate.itakuhaken_id, partnermember_id: @youinwariate.partnermember_id }
    end

    assert_redirected_to youinwariate_path(assigns(:youinwariate))
  end

  test "should show youinwariate" do
    get :show, id: @youinwariate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @youinwariate
    assert_response :success
  end

  test "should update youinwariate" do
    patch :update, id: @youinwariate, youinwariate: { itakuhaken_id: @youinwariate.itakuhaken_id, partnermember_id: @youinwariate.partnermember_id }
    assert_redirected_to youinwariate_path(assigns(:youinwariate))
  end

  test "should destroy youinwariate" do
    assert_difference('Youinwariate.count', -1) do
      delete :destroy, id: @youinwariate
    end

    assert_redirected_to youinwariates_path
  end
end
