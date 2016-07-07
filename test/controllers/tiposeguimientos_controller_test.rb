require 'test_helper'

class TiposeguimientosControllerTest < ActionController::TestCase
  setup do
    @tiposeguimiento = tiposeguimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiposeguimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiposeguimiento" do
    assert_difference('Tiposeguimiento.count') do
      post :create, tiposeguimiento: { activo: @tiposeguimiento.activo, nombre: @tiposeguimiento.nombre }
    end

    assert_redirected_to tiposeguimiento_path(assigns(:tiposeguimiento))
  end

  test "should show tiposeguimiento" do
    get :show, id: @tiposeguimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiposeguimiento
    assert_response :success
  end

  test "should update tiposeguimiento" do
    patch :update, id: @tiposeguimiento, tiposeguimiento: { activo: @tiposeguimiento.activo, nombre: @tiposeguimiento.nombre }
    assert_redirected_to tiposeguimiento_path(assigns(:tiposeguimiento))
  end

  test "should destroy tiposeguimiento" do
    assert_difference('Tiposeguimiento.count', -1) do
      delete :destroy, id: @tiposeguimiento
    end

    assert_redirected_to tiposeguimientos_path
  end
end
