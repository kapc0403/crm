require 'test_helper'

class MenuRapidosControllerTest < ActionController::TestCase
  setup do
    @menu_rapido = menu_rapidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_rapidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_rapido" do
    assert_difference('MenuRapido.count') do
      post :create, menu_rapido: { acceso6: @menu_rapido.acceso6, accesor1: @menu_rapido.accesor1, accesor2: @menu_rapido.accesor2, accesor3: @menu_rapido.accesor3, accesor4: @menu_rapido.accesor4, accesor5: @menu_rapido.accesor5, accesor7: @menu_rapido.accesor7, usuario_id: @menu_rapido.usuario_id }
    end

    assert_redirected_to menu_rapido_path(assigns(:menu_rapido))
  end

  test "should show menu_rapido" do
    get :show, id: @menu_rapido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_rapido
    assert_response :success
  end

  test "should update menu_rapido" do
    patch :update, id: @menu_rapido, menu_rapido: { acceso6: @menu_rapido.acceso6, accesor1: @menu_rapido.accesor1, accesor2: @menu_rapido.accesor2, accesor3: @menu_rapido.accesor3, accesor4: @menu_rapido.accesor4, accesor5: @menu_rapido.accesor5, accesor7: @menu_rapido.accesor7, usuario_id: @menu_rapido.usuario_id }
    assert_redirected_to menu_rapido_path(assigns(:menu_rapido))
  end

  test "should destroy menu_rapido" do
    assert_difference('MenuRapido.count', -1) do
      delete :destroy, id: @menu_rapido
    end

    assert_redirected_to menu_rapidos_path
  end
end
