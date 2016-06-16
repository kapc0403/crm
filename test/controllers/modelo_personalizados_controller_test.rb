require 'test_helper'

class ModeloPersonalizadosControllerTest < ActionController::TestCase
  setup do
    @modelo_personalizado = modelo_personalizados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:modelo_personalizados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create modelo_personalizado" do
    assert_difference('ModeloPersonalizado.count') do
      post :create, modelo_personalizado: { colorApariencia: @modelo_personalizado.colorApariencia, homeW10: @modelo_personalizado.homeW10, homeW1: @modelo_personalizado.homeW1, homeW2: @modelo_personalizado.homeW2, homeW3: @modelo_personalizado.homeW3, homeW4: @modelo_personalizado.homeW4, homeW5: @modelo_personalizado.homeW5, homeW6: @modelo_personalizado.homeW6, homeW7: @modelo_personalizado.homeW7, homeW8: @modelo_personalizado.homeW8, homeW9: @modelo_personalizado.homeW9, usuario_id: @modelo_personalizado.usuario_id }
    end

    assert_redirected_to modelo_personalizado_path(assigns(:modelo_personalizado))
  end

  test "should show modelo_personalizado" do
    get :show, id: @modelo_personalizado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @modelo_personalizado
    assert_response :success
  end

  test "should update modelo_personalizado" do
    patch :update, id: @modelo_personalizado, modelo_personalizado: { colorApariencia: @modelo_personalizado.colorApariencia, homeW10: @modelo_personalizado.homeW10, homeW1: @modelo_personalizado.homeW1, homeW2: @modelo_personalizado.homeW2, homeW3: @modelo_personalizado.homeW3, homeW4: @modelo_personalizado.homeW4, homeW5: @modelo_personalizado.homeW5, homeW6: @modelo_personalizado.homeW6, homeW7: @modelo_personalizado.homeW7, homeW8: @modelo_personalizado.homeW8, homeW9: @modelo_personalizado.homeW9, usuario_id: @modelo_personalizado.usuario_id }
    assert_redirected_to modelo_personalizado_path(assigns(:modelo_personalizado))
  end

  test "should destroy modelo_personalizado" do
    assert_difference('ModeloPersonalizado.count', -1) do
      delete :destroy, id: @modelo_personalizado
    end

    assert_redirected_to modelo_personalizados_path
  end
end
