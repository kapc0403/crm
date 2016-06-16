require 'test_helper'

class PersonaClientesControllerTest < ActionController::TestCase
  setup do
    @persona_cliente = persona_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persona_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona_cliente" do
    assert_difference('PersonaCliente.count') do
      post :create, persona_cliente: { apellido: @persona_cliente.apellido, cedula: @persona_cliente.cedula, direccion: @persona_cliente.direccion, email: @persona_cliente.email, fechaFin: @persona_cliente.fechaFin, fechaInicio: @persona_cliente.fechaInicio, fechaNacimiento: @persona_cliente.fechaNacimiento, foto: @persona_cliente.foto, movil: @persona_cliente.movil, nombre: @persona_cliente.nombre, telefono: @persona_cliente.telefono, tipo: @persona_cliente.tipo, tipoCedula: @persona_cliente.tipoCedula, usuarios_id: @persona_cliente.usuarios_id }
    end

    assert_redirected_to persona_cliente_path(assigns(:persona_cliente))
  end

  test "should show persona_cliente" do
    get :show, id: @persona_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona_cliente
    assert_response :success
  end

  test "should update persona_cliente" do
    patch :update, id: @persona_cliente, persona_cliente: { apellido: @persona_cliente.apellido, cedula: @persona_cliente.cedula, direccion: @persona_cliente.direccion, email: @persona_cliente.email, fechaFin: @persona_cliente.fechaFin, fechaInicio: @persona_cliente.fechaInicio, fechaNacimiento: @persona_cliente.fechaNacimiento, foto: @persona_cliente.foto, movil: @persona_cliente.movil, nombre: @persona_cliente.nombre, telefono: @persona_cliente.telefono, tipo: @persona_cliente.tipo, tipoCedula: @persona_cliente.tipoCedula, usuarios_id: @persona_cliente.usuarios_id }
    assert_redirected_to persona_cliente_path(assigns(:persona_cliente))
  end

  test "should destroy persona_cliente" do
    assert_difference('PersonaCliente.count', -1) do
      delete :destroy, id: @persona_cliente
    end

    assert_redirected_to persona_clientes_path
  end
end
