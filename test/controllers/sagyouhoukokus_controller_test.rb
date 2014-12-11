require 'test_helper'

class SagyouhoukokusControllerTest < ActionController::TestCase
  setup do
    @sagyouhoukoku = sagyouhoukokus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sagyouhoukokus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sagyouhoukoku" do
    assert_difference('Sagyouhoukoku.count') do
      post :create, sagyouhoukoku: { atena: @sagyouhoukoku.atena, jisshinaiyou: @sagyouhoukoku.jisshinaiyou, nengetsu: @sagyouhoukoku.nengetsu, sagyoukakunin_id: @sagyouhoukoku.sagyoukakunin_id, sagyoushiji_id: @sagyouhoukoku.sagyoushiji_id, sashidashi: @sagyouhoukoku.sashidashi, sumi: @sagyouhoukoku.sumi, youinjisseki_id: @sagyouhoukoku.youinjisseki_id }
    end

    assert_redirected_to sagyouhoukoku_path(assigns(:sagyouhoukoku))
  end

  test "should show sagyouhoukoku" do
    get :show, id: @sagyouhoukoku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sagyouhoukoku
    assert_response :success
  end

  test "should update sagyouhoukoku" do
    patch :update, id: @sagyouhoukoku, sagyouhoukoku: { atena: @sagyouhoukoku.atena, jisshinaiyou: @sagyouhoukoku.jisshinaiyou, nengetsu: @sagyouhoukoku.nengetsu, sagyoukakunin_id: @sagyouhoukoku.sagyoukakunin_id, sagyoushiji_id: @sagyouhoukoku.sagyoushiji_id, sashidashi: @sagyouhoukoku.sashidashi, sumi: @sagyouhoukoku.sumi, youinjisseki_id: @sagyouhoukoku.youinjisseki_id }
    assert_redirected_to sagyouhoukoku_path(assigns(:sagyouhoukoku))
  end

  test "should destroy sagyouhoukoku" do
    assert_difference('Sagyouhoukoku.count', -1) do
      delete :destroy, id: @sagyouhoukoku
    end

    assert_redirected_to sagyouhoukokus_path
  end
end
