require 'test_helper'

class EClientesControllerTest < ActionController::TestCase
  setup do
    @e_cliente = e_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:e_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create e_cliente" do
    assert_difference('ECliente.count') do
      post :create, e_cliente: { Cedula: @e_cliente.Cedula, EDireccion: @e_cliente.EDireccion, EEmail: @e_cliente.EEmail, ENombre: @e_cliente.ENombre, ETelefono: @e_cliente.ETelefono, FFin: @e_cliente.FFin, FInicio: @e_cliente.FInicio, Foto: @e_cliente.Foto, Nit: @e_cliente.Nit, PApellido: @e_cliente.PApellido, PDireccion: @e_cliente.PDireccion, PEmail: @e_cliente.PEmail, PMovil: @e_cliente.PMovil, PNombre: @e_cliente.PNombre, PTelefono: @e_cliente.PTelefono, Sexo: @e_cliente.Sexo, TCedula: @e_cliente.TCedula, Tipo: @e_cliente.Tipo, Usuarios_id: @e_cliente.Usuarios_id }
    end

    assert_redirected_to e_cliente_path(assigns(:e_cliente))
  end

  test "should show e_cliente" do
    get :show, id: @e_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @e_cliente
    assert_response :success
  end

  test "should update e_cliente" do
    patch :update, id: @e_cliente, e_cliente: { Cedula: @e_cliente.Cedula, EDireccion: @e_cliente.EDireccion, EEmail: @e_cliente.EEmail, ENombre: @e_cliente.ENombre, ETelefono: @e_cliente.ETelefono, FFin: @e_cliente.FFin, FInicio: @e_cliente.FInicio, Foto: @e_cliente.Foto, Nit: @e_cliente.Nit, PApellido: @e_cliente.PApellido, PDireccion: @e_cliente.PDireccion, PEmail: @e_cliente.PEmail, PMovil: @e_cliente.PMovil, PNombre: @e_cliente.PNombre, PTelefono: @e_cliente.PTelefono, Sexo: @e_cliente.Sexo, TCedula: @e_cliente.TCedula, Tipo: @e_cliente.Tipo, Usuarios_id: @e_cliente.Usuarios_id }
    assert_redirected_to e_cliente_path(assigns(:e_cliente))
  end

  test "should destroy e_cliente" do
    assert_difference('ECliente.count', -1) do
      delete :destroy, id: @e_cliente
    end

    assert_redirected_to e_clientes_path
  end
end
