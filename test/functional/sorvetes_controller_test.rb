require 'test_helper'

class SorvetesControllerTest < ActionController::TestCase
  setup do
    @sorvete = sorvetes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sorvetes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sorvete" do
    assert_difference('Sorvete.count') do
      post :create, sorvete: { cobertura: @sorvete.cobertura, preco: @sorvete.preco, sabor: @sorvete.sabor }
    end

    assert_redirected_to sorvete_path(assigns(:sorvete))
  end

  test "should show sorvete" do
    get :show, id: @sorvete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sorvete
    assert_response :success
  end

  test "should update sorvete" do
    put :update, id: @sorvete, sorvete: { cobertura: @sorvete.cobertura, preco: @sorvete.preco, sabor: @sorvete.sabor }
    assert_redirected_to sorvete_path(assigns(:sorvete))
  end

  test "should destroy sorvete" do
    assert_difference('Sorvete.count', -1) do
      delete :destroy, id: @sorvete
    end

    assert_redirected_to sorvetes_path
  end
end
