require 'test_helper'

class LlamadasControllerTest < ActionController::TestCase
  setup do
    @llamada = llamadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:llamadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create llamada" do
    assert_difference('Llamada.count') do
      post :create, llamada: { empresacliente_id: @llamada.empresacliente_id, motivo: @llamada.motivo }
    end

    assert_redirected_to llamada_path(assigns(:llamada))
  end

  test "should show llamada" do
    get :show, id: @llamada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @llamada
    assert_response :success
  end

  test "should update llamada" do
    patch :update, id: @llamada, llamada: { empresacliente_id: @llamada.empresacliente_id, motivo: @llamada.motivo }
    assert_redirected_to llamada_path(assigns(:llamada))
  end

  test "should destroy llamada" do
    assert_difference('Llamada.count', -1) do
      delete :destroy, id: @llamada
    end

    assert_redirected_to llamadas_path
  end
end
