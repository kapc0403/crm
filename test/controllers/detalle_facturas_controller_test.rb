require 'test_helper'

class DetalleFacturasControllerTest < ActionController::TestCase
  setup do
    @detalle_factura = detalle_facturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_facturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_factura" do
    assert_difference('DetalleFactura.count') do
      post :create, detalle_factura: { cantidad: @detalle_factura.cantidad, descuento: @detalle_factura.descuento, factura_id: @detalle_factura.factura_id, producto_id: @detalle_factura.producto_id, referenciaProducto: @detalle_factura.referenciaProducto, servicio_id: @detalle_factura.servicio_id, total: @detalle_factura.total }
    end

    assert_redirected_to detalle_factura_path(assigns(:detalle_factura))
  end

  test "should show detalle_factura" do
    get :show, id: @detalle_factura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_factura
    assert_response :success
  end

  test "should update detalle_factura" do
    patch :update, id: @detalle_factura, detalle_factura: { cantidad: @detalle_factura.cantidad, descuento: @detalle_factura.descuento, factura_id: @detalle_factura.factura_id, producto_id: @detalle_factura.producto_id, referenciaProducto: @detalle_factura.referenciaProducto, servicio_id: @detalle_factura.servicio_id, total: @detalle_factura.total }
    assert_redirected_to detalle_factura_path(assigns(:detalle_factura))
  end

  test "should destroy detalle_factura" do
    assert_difference('DetalleFactura.count', -1) do
      delete :destroy, id: @detalle_factura
    end

    assert_redirected_to detalle_facturas_path
  end
end
