require 'test_helper'

class EmpresaClientesControllerTest < ActionController::TestCase
  setup do
    @empresa_cliente = empresa_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresa_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa_cliente" do
    assert_difference('EmpresaCliente.count') do
      post :create, empresa_cliente: { cedula: @empresa_cliente.cedula, empresaDireccion: @empresa_cliente.empresaDireccion, empresaEmail: @empresa_cliente.empresaEmail, empresaNombre: @empresa_cliente.empresaNombre, empresaTelefono: @empresa_cliente.empresaTelefono, fechaFin: @empresa_cliente.fechaFin, fechaInicio: @empresa_cliente.fechaInicio, fechaNacimiento: @empresa_cliente.fechaNacimiento, foto: @empresa_cliente.foto, nit: @empresa_cliente.nit, paginaWeb: @empresa_cliente.paginaWeb, personaApellido: @empresa_cliente.personaApellido, personaDireccion: @empresa_cliente.personaDireccion, personaEmail: @empresa_cliente.personaEmail, personaMovil: @empresa_cliente.personaMovil, personaNombre: @empresa_cliente.personaNombre, personaTelefono: @empresa_cliente.personaTelefono, tipo: @empresa_cliente.tipo, tipoCedula: @empresa_cliente.tipoCedula, usuarios_id: @empresa_cliente.usuarios_id }
    end

    assert_redirected_to empresa_cliente_path(assigns(:empresa_cliente))
  end

  test "should show empresa_cliente" do
    get :show, id: @empresa_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresa_cliente
    assert_response :success
  end

  test "should update empresa_cliente" do
    patch :update, id: @empresa_cliente, empresa_cliente: { cedula: @empresa_cliente.cedula, empresaDireccion: @empresa_cliente.empresaDireccion, empresaEmail: @empresa_cliente.empresaEmail, empresaNombre: @empresa_cliente.empresaNombre, empresaTelefono: @empresa_cliente.empresaTelefono, fechaFin: @empresa_cliente.fechaFin, fechaInicio: @empresa_cliente.fechaInicio, fechaNacimiento: @empresa_cliente.fechaNacimiento, foto: @empresa_cliente.foto, nit: @empresa_cliente.nit, paginaWeb: @empresa_cliente.paginaWeb, personaApellido: @empresa_cliente.personaApellido, personaDireccion: @empresa_cliente.personaDireccion, personaEmail: @empresa_cliente.personaEmail, personaMovil: @empresa_cliente.personaMovil, personaNombre: @empresa_cliente.personaNombre, personaTelefono: @empresa_cliente.personaTelefono, tipo: @empresa_cliente.tipo, tipoCedula: @empresa_cliente.tipoCedula, usuarios_id: @empresa_cliente.usuarios_id }
    assert_redirected_to empresa_cliente_path(assigns(:empresa_cliente))
  end

  test "should destroy empresa_cliente" do
    assert_difference('EmpresaCliente.count', -1) do
      delete :destroy, id: @empresa_cliente
    end

    assert_redirected_to empresa_clientes_path
  end
end
