require 'test_helper'

class EmpresaclientesControllerTest < ActionController::TestCase
  setup do
    @empresacliente = empresaclientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresaclientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresacliente" do
    assert_difference('Empresacliente.count') do
      post :create, empresacliente: { empresaDireccion: @empresacliente.empresaDireccion, empresaEmail: @empresacliente.empresaEmail, empresaNombre: @empresacliente.empresaNombre, empresaTelefono: @empresacliente.empresaTelefono, fechaFin: @empresacliente.fechaFin, fechaInicio: @empresacliente.fechaInicio, fechaNacimiento: @empresacliente.fechaNacimiento, foto: @empresacliente.foto, nit: @empresacliente.nit, paginaWeb: @empresacliente.paginaWeb, personaApellido: @empresacliente.personaApellido, personaDireccion: @empresacliente.personaDireccion, personaEmail: @empresacliente.personaEmail, personaMovil: @empresacliente.personaMovil, personaNombre: @empresacliente.personaNombre, personaTelefono: @empresacliente.personaTelefono, tipo: @empresacliente.tipo, tipoCedula: @empresacliente.tipoCedula, usuario_id: @empresacliente.usuario_id }
    end

    assert_redirected_to empresacliente_path(assigns(:empresacliente))
  end

  test "should show empresacliente" do
    get :show, id: @empresacliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresacliente
    assert_response :success
  end

  test "should update empresacliente" do
    patch :update, id: @empresacliente, empresacliente: { empresaDireccion: @empresacliente.empresaDireccion, empresaEmail: @empresacliente.empresaEmail, empresaNombre: @empresacliente.empresaNombre, empresaTelefono: @empresacliente.empresaTelefono, fechaFin: @empresacliente.fechaFin, fechaInicio: @empresacliente.fechaInicio, fechaNacimiento: @empresacliente.fechaNacimiento, foto: @empresacliente.foto, nit: @empresacliente.nit, paginaWeb: @empresacliente.paginaWeb, personaApellido: @empresacliente.personaApellido, personaDireccion: @empresacliente.personaDireccion, personaEmail: @empresacliente.personaEmail, personaMovil: @empresacliente.personaMovil, personaNombre: @empresacliente.personaNombre, personaTelefono: @empresacliente.personaTelefono, tipo: @empresacliente.tipo, tipoCedula: @empresacliente.tipoCedula, usuario_id: @empresacliente.usuario_id }
    assert_redirected_to empresacliente_path(assigns(:empresacliente))
  end

  test "should destroy empresacliente" do
    assert_difference('Empresacliente.count', -1) do
      delete :destroy, id: @empresacliente
    end

    assert_redirected_to empresaclientes_path
  end
end
