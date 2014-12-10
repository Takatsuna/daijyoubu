require 'test_helper'

class ItakuhakensControllerTest < ActionController::TestCase
  setup do
    @itakuhaken = itakuhakens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itakuhakens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itakuhaken" do
    assert_difference('Itakuhaken.count') do
      post :create, itakuhaken: { end: @itakuhaken.end, jyucyu_id: @itakuhaken.jyucyu_id, kessaibango: @itakuhaken.kessaibango, kessaikenmei: @itakuhaken.kessaikenmei, partner_id: @itakuhaken.partner_id, start: @itakuhaken.start, ukeireninzu: @itakuhaken.ukeireninzu }
    end

    assert_redirected_to itakuhaken_path(assigns(:itakuhaken))
  end

  test "should show itakuhaken" do
    get :show, id: @itakuhaken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itakuhaken
    assert_response :success
  end

  test "should update itakuhaken" do
    patch :update, id: @itakuhaken, itakuhaken: { end: @itakuhaken.end, jyucyu_id: @itakuhaken.jyucyu_id, kessaibango: @itakuhaken.kessaibango, kessaikenmei: @itakuhaken.kessaikenmei, partner_id: @itakuhaken.partner_id, start: @itakuhaken.start, ukeireninzu: @itakuhaken.ukeireninzu }
    assert_redirected_to itakuhaken_path(assigns(:itakuhaken))
  end

  test "should destroy itakuhaken" do
    assert_difference('Itakuhaken.count', -1) do
      delete :destroy, id: @itakuhaken
    end

    assert_redirected_to itakuhakens_path
  end
end
