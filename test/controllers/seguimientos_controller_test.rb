require 'test_helper'

class SeguimientosControllerTest < ActionController::TestCase
  setup do
    @seguimiento = seguimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seguimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seguimiento" do
    assert_difference('Seguimiento.count') do
      post :create, seguimiento: { descripcion: @seguimiento.descripcion, empresacliente_id: @seguimiento.empresacliente_id, fecha: @seguimiento.fecha, tiposeguimiento_id: @seguimiento.tiposeguimiento_id, usuario_id: @seguimiento.usuario_id }
    end

    assert_redirected_to seguimiento_path(assigns(:seguimiento))
  end

  test "should show seguimiento" do
    get :show, id: @seguimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seguimiento
    assert_response :success
  end

  test "should update seguimiento" do
    patch :update, id: @seguimiento, seguimiento: { descripcion: @seguimiento.descripcion, empresacliente_id: @seguimiento.empresacliente_id, fecha: @seguimiento.fecha, tiposeguimiento_id: @seguimiento.tiposeguimiento_id, usuario_id: @seguimiento.usuario_id }
    assert_redirected_to seguimiento_path(assigns(:seguimiento))
  end

  test "should destroy seguimiento" do
    assert_difference('Seguimiento.count', -1) do
      delete :destroy, id: @seguimiento
    end

    assert_redirected_to seguimientos_path
  end
end
