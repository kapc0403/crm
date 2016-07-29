require 'test_helper'

class AccesosdirectosControllerTest < ActionController::TestCase
  setup do
    @accesosdirecto = accesosdirectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accesosdirectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accesosdirecto" do
    assert_difference('Accesosdirecto.count') do
      post :create, accesosdirecto: { icon: @accesosdirecto.icon, nombre: @accesosdirecto.nombre, url: @accesosdirecto.url, usuario_id: @accesosdirecto.usuario_id }
    end

    assert_redirected_to accesosdirecto_path(assigns(:accesosdirecto))
  end

  test "should show accesosdirecto" do
    get :show, id: @accesosdirecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accesosdirecto
    assert_response :success
  end

  test "should update accesosdirecto" do
    patch :update, id: @accesosdirecto, accesosdirecto: { icon: @accesosdirecto.icon, nombre: @accesosdirecto.nombre, url: @accesosdirecto.url, usuario_id: @accesosdirecto.usuario_id }
    assert_redirected_to accesosdirecto_path(assigns(:accesosdirecto))
  end

  test "should destroy accesosdirecto" do
    assert_difference('Accesosdirecto.count', -1) do
      delete :destroy, id: @accesosdirecto
    end

    assert_redirected_to accesosdirectos_path
  end
end
