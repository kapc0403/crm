require 'test_helper'

class PersonaclientesControllerTest < ActionController::TestCase
  setup do
    @personacliente = personaclientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaclientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personacliente" do
    assert_difference('Personacliente.count') do
      post :create, personacliente: { apellido: @personacliente.apellido, cedula: @personacliente.cedula, direccion: @personacliente.direccion, email: @personacliente.email, fechaInicio: @personacliente.fechaInicio, fechaNacimiento: @personacliente.fechaNacimiento, fechafin: @personacliente.fechafin, foto: @personacliente.foto, movil: @personacliente.movil, nombre: @personacliente.nombre, telefono: @personacliente.telefono, tipo: @personacliente.tipo, tipoCedula: @personacliente.tipoCedula, usuario_id: @personacliente.usuario_id }
    end

    assert_redirected_to personacliente_path(assigns(:personacliente))
  end

  test "should show personacliente" do
    get :show, id: @personacliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personacliente
    assert_response :success
  end

  test "should update personacliente" do
    patch :update, id: @personacliente, personacliente: { apellido: @personacliente.apellido, cedula: @personacliente.cedula, direccion: @personacliente.direccion, email: @personacliente.email, fechaInicio: @personacliente.fechaInicio, fechaNacimiento: @personacliente.fechaNacimiento, fechafin: @personacliente.fechafin, foto: @personacliente.foto, movil: @personacliente.movil, nombre: @personacliente.nombre, telefono: @personacliente.telefono, tipo: @personacliente.tipo, tipoCedula: @personacliente.tipoCedula, usuario_id: @personacliente.usuario_id }
    assert_redirected_to personacliente_path(assigns(:personacliente))
  end

  test "should destroy personacliente" do
    assert_difference('Personacliente.count', -1) do
      delete :destroy, id: @personacliente
    end

    assert_redirected_to personaclientes_path
  end
end
