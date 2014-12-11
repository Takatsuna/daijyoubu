require 'test_helper'

class SagyoukakuninsControllerTest < ActionController::TestCase
  setup do
    @sagyoukakunin = sagyoukakunins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sagyoukakunins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sagyoukakunin" do
    assert_difference('Sagyoukakunin.count') do
      post :create, sagyoukakunin: { atena: @sagyoukakunin.atena, nengetsu: @sagyoukakunin.nengetsu, sagyouhoukoku_id: @sagyoukakunin.sagyouhoukoku_id, sashidashi: @sagyoukakunin.sashidashi, sumi: @sagyoukakunin.sumi }
    end

    assert_redirected_to sagyoukakunin_path(assigns(:sagyoukakunin))
  end

  test "should show sagyoukakunin" do
    get :show, id: @sagyoukakunin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sagyoukakunin
    assert_response :success
  end

  test "should update sagyoukakunin" do
    patch :update, id: @sagyoukakunin, sagyoukakunin: { atena: @sagyoukakunin.atena, nengetsu: @sagyoukakunin.nengetsu, sagyouhoukoku_id: @sagyoukakunin.sagyouhoukoku_id, sashidashi: @sagyoukakunin.sashidashi, sumi: @sagyoukakunin.sumi }
    assert_redirected_to sagyoukakunin_path(assigns(:sagyoukakunin))
  end

  test "should destroy sagyoukakunin" do
    assert_difference('Sagyoukakunin.count', -1) do
      delete :destroy, id: @sagyoukakunin
    end

    assert_redirected_to sagyoukakunins_path
  end
end
