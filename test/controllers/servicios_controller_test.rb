require 'test_helper'

class ServiciosControllerTest < ActionController::TestCase
  setup do
    @servicio = servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicio" do
    assert_difference('Servicio.count') do
      post :create, servicio: { codigo: @servicio.codigo, descripcion: @servicio.descripcion, disponibilidad: @servicio.disponibilidad, nombre: @servicio.nombre, precio: @servicio.precio, usuarios_id: @servicio.usuarios_id }
    end

    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should show servicio" do
    get :show, id: @servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicio
    assert_response :success
  end

  test "should update servicio" do
    patch :update, id: @servicio, servicio: { codigo: @servicio.codigo, descripcion: @servicio.descripcion, disponibilidad: @servicio.disponibilidad, nombre: @servicio.nombre, precio: @servicio.precio, usuarios_id: @servicio.usuarios_id }
    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should destroy servicio" do
    assert_difference('Servicio.count', -1) do
      delete :destroy, id: @servicio
    end

    assert_redirected_to servicios_path
  end
end
