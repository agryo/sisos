require 'test_helper'

class FexaordsControllerTest < ActionController::TestCase
  setup do
    @fexaord = fexaords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fexaords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fexaord" do
    assert_difference('Fexaord.count') do
      post :create, fexaord: {  }
    end

    assert_redirected_to fexaord_path(assigns(:fexaord))
  end

  test "should show fexaord" do
    get :show, id: @fexaord
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fexaord
    assert_response :success
  end

  test "should update fexaord" do
    put :update, id: @fexaord, fexaord: {  }
    assert_redirected_to fexaord_path(assigns(:fexaord))
  end

  test "should destroy fexaord" do
    assert_difference('Fexaord.count', -1) do
      delete :destroy, id: @fexaord
    end

    assert_redirected_to fexaords_path
  end
end
