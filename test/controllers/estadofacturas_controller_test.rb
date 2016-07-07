require 'test_helper'

class EstadofacturasControllerTest < ActionController::TestCase
  setup do
    @estadofactura = estadofacturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadofacturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadofactura" do
    assert_difference('Estadofactura.count') do
      post :create, estadofactura: { nombre: @estadofactura.nombre }
    end

    assert_redirected_to estadofactura_path(assigns(:estadofactura))
  end

  test "should show estadofactura" do
    get :show, id: @estadofactura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadofactura
    assert_response :success
  end

  test "should update estadofactura" do
    patch :update, id: @estadofactura, estadofactura: { nombre: @estadofactura.nombre }
    assert_redirected_to estadofactura_path(assigns(:estadofactura))
  end

  test "should destroy estadofactura" do
    assert_difference('Estadofactura.count', -1) do
      delete :destroy, id: @estadofactura
    end

    assert_redirected_to estadofacturas_path
  end
end
