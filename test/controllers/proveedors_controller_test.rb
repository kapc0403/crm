require 'test_helper'

class ProveedorsControllerTest < ActionController::TestCase
  setup do
    @proveedor = proveedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proveedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proveedor" do
    assert_difference('Proveedor.count') do
      post :create, proveedor: { cedula: @proveedor.cedula, cuentaContable: @proveedor.cuentaContable, empresaDireccion: @proveedor.empresaDireccion, empresaEmail: @proveedor.empresaEmail, empresaNombre: @proveedor.empresaNombre, empresaTelefono: @proveedor.empresaTelefono, fechaFin: @proveedor.fechaFin, fechaInicio: @proveedor.fechaInicio, fechaNacimiento: @proveedor.fechaNacimiento, foto: @proveedor.foto, nit: @proveedor.nit, paginaWeb: @proveedor.paginaWeb, personaApellido: @proveedor.personaApellido, personaDireccion: @proveedor.personaDireccion, personaEmail: @proveedor.personaEmail, personaMovil: @proveedor.personaMovil, personaNombre: @proveedor.personaNombre, personaTelefono: @proveedor.personaTelefono, tipoCedula: @proveedor.tipoCedula, usuarios_id: @proveedor.usuarios_id }
    end

    assert_redirected_to proveedor_path(assigns(:proveedor))
  end

  test "should show proveedor" do
    get :show, id: @proveedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proveedor
    assert_response :success
  end

  test "should update proveedor" do
    patch :update, id: @proveedor, proveedor: { cedula: @proveedor.cedula, cuentaContable: @proveedor.cuentaContable, empresaDireccion: @proveedor.empresaDireccion, empresaEmail: @proveedor.empresaEmail, empresaNombre: @proveedor.empresaNombre, empresaTelefono: @proveedor.empresaTelefono, fechaFin: @proveedor.fechaFin, fechaInicio: @proveedor.fechaInicio, fechaNacimiento: @proveedor.fechaNacimiento, foto: @proveedor.foto, nit: @proveedor.nit, paginaWeb: @proveedor.paginaWeb, personaApellido: @proveedor.personaApellido, personaDireccion: @proveedor.personaDireccion, personaEmail: @proveedor.personaEmail, personaMovil: @proveedor.personaMovil, personaNombre: @proveedor.personaNombre, personaTelefono: @proveedor.personaTelefono, tipoCedula: @proveedor.tipoCedula, usuarios_id: @proveedor.usuarios_id }
    assert_redirected_to proveedor_path(assigns(:proveedor))
  end

  test "should destroy proveedor" do
    assert_difference('Proveedor.count', -1) do
      delete :destroy, id: @proveedor
    end

    assert_redirected_to proveedors_path
  end
end
