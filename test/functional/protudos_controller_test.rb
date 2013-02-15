require 'test_helper'

class ProtudosControllerTest < ActionController::TestCase
  setup do
    @protudo = protudos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:protudos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create protudo" do
    assert_difference('Protudo.count') do
      post :create, protudo: { nome: @protudo.nome, preco: @protudo.preco, tipo: @protudo.tipo }
    end

    assert_redirected_to protudo_path(assigns(:protudo))
  end

  test "should show protudo" do
    get :show, id: @protudo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @protudo
    assert_response :success
  end

  test "should update protudo" do
    put :update, id: @protudo, protudo: { nome: @protudo.nome, preco: @protudo.preco, tipo: @protudo.tipo }
    assert_redirected_to protudo_path(assigns(:protudo))
  end

  test "should destroy protudo" do
    assert_difference('Protudo.count', -1) do
      delete :destroy, id: @protudo
    end

    assert_redirected_to protudos_path
  end
end
