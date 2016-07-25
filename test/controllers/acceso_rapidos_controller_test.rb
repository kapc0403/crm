require 'test_helper'

class AccesoRapidosControllerTest < ActionController::TestCase
  setup do
    @acceso_rapido = acceso_rapidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acceso_rapidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acceso_rapido" do
    assert_difference('AccesoRapido.count') do
      post :create, acceso_rapido: { nombre: @acceso_rapido.nombre, url: @acceso_rapido.url }
    end

    assert_redirected_to acceso_rapido_path(assigns(:acceso_rapido))
  end

  test "should show acceso_rapido" do
    get :show, id: @acceso_rapido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acceso_rapido
    assert_response :success
  end

  test "should update acceso_rapido" do
    patch :update, id: @acceso_rapido, acceso_rapido: { nombre: @acceso_rapido.nombre, url: @acceso_rapido.url }
    assert_redirected_to acceso_rapido_path(assigns(:acceso_rapido))
  end

  test "should destroy acceso_rapido" do
    assert_difference('AccesoRapido.count', -1) do
      delete :destroy, id: @acceso_rapido
    end

    assert_redirected_to acceso_rapidos_path
  end
end
