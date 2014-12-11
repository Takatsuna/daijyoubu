require 'test_helper'

class SagyoushijisControllerTest < ActionController::TestCase
  setup do
    @sagyoushiji = sagyoushijis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sagyoushijis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sagyoushiji" do
    assert_difference('Sagyoushiji.count') do
      post :create, sagyoushiji: { atena: @sagyoushiji.atena, itakuhaken_id: @sagyoushiji.itakuhaken_id, jisshinaiyou: @sagyoushiji.jisshinaiyou, nengetsu: @sagyoushiji.nengetsu, sagyouhoukoku_id: @sagyoushiji.sagyouhoukoku_id, sashidashi: @sagyoushiji.sashidashi, sumi: @sagyoushiji.sumi }
    end

    assert_redirected_to sagyoushiji_path(assigns(:sagyoushiji))
  end

  test "should show sagyoushiji" do
    get :show, id: @sagyoushiji
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sagyoushiji
    assert_response :success
  end

  test "should update sagyoushiji" do
    patch :update, id: @sagyoushiji, sagyoushiji: { atena: @sagyoushiji.atena, itakuhaken_id: @sagyoushiji.itakuhaken_id, jisshinaiyou: @sagyoushiji.jisshinaiyou, nengetsu: @sagyoushiji.nengetsu, sagyouhoukoku_id: @sagyoushiji.sagyouhoukoku_id, sashidashi: @sagyoushiji.sashidashi, sumi: @sagyoushiji.sumi }
    assert_redirected_to sagyoushiji_path(assigns(:sagyoushiji))
  end

  test "should destroy sagyoushiji" do
    assert_difference('Sagyoushiji.count', -1) do
      delete :destroy, id: @sagyoushiji
    end

    assert_redirected_to sagyoushijis_path
  end
end
