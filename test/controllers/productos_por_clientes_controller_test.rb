require 'test_helper'

class ProductosPorClientesControllerTest < ActionController::TestCase
  setup do
    @productos_por_cliente = productos_por_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos_por_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productos_por_cliente" do
    assert_difference('ProductosPorCliente.count') do
      post :create, productos_por_cliente: { datosTecnicos: @productos_por_cliente.datosTecnicos, fechaAdquisicion: @productos_por_cliente.fechaAdquisicion, fechaCaducidad: @productos_por_cliente.fechaCaducidad, marca: @productos_por_cliente.marca, nombre: @productos_por_cliente.nombre, nroProductos: @productos_por_cliente.nroProductos, referencia: @productos_por_cliente.referencia, serial: @productos_por_cliente.serial, usuario_id: @productos_por_cliente.usuario_id }
    end

    assert_redirected_to productos_por_cliente_path(assigns(:productos_por_cliente))
  end

  test "should show productos_por_cliente" do
    get :show, id: @productos_por_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productos_por_cliente
    assert_response :success
  end

  test "should update productos_por_cliente" do
    patch :update, id: @productos_por_cliente, productos_por_cliente: { datosTecnicos: @productos_por_cliente.datosTecnicos, fechaAdquisicion: @productos_por_cliente.fechaAdquisicion, fechaCaducidad: @productos_por_cliente.fechaCaducidad, marca: @productos_por_cliente.marca, nombre: @productos_por_cliente.nombre, nroProductos: @productos_por_cliente.nroProductos, referencia: @productos_por_cliente.referencia, serial: @productos_por_cliente.serial, usuario_id: @productos_por_cliente.usuario_id }
    assert_redirected_to productos_por_cliente_path(assigns(:productos_por_cliente))
  end

  test "should destroy productos_por_cliente" do
    assert_difference('ProductosPorCliente.count', -1) do
      delete :destroy, id: @productos_por_cliente
    end

    assert_redirected_to productos_por_clientes_path
  end
end
