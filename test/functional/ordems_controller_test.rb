require 'test_helper'

class OrdemsControllerTest < ActionController::TestCase
  setup do
    @ordem = ordems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordem" do
    assert_difference('Ordem.count') do
      post :create, ordem: { maquina: @ordem.maquina, observacoes: @ordem.observacoes, pecas: @ordem.pecas }
    end

    assert_redirected_to ordem_path(assigns(:ordem))
  end

  test "should show ordem" do
    get :show, id: @ordem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordem
    assert_response :success
  end

  test "should update ordem" do
    put :update, id: @ordem, ordem: { maquina: @ordem.maquina, observacoes: @ordem.observacoes, pecas: @ordem.pecas }
    assert_redirected_to ordem_path(assigns(:ordem))
  end

  test "should destroy ordem" do
    assert_difference('Ordem.count', -1) do
      delete :destroy, id: @ordem
    end

    assert_redirected_to ordems_path
  end
end
