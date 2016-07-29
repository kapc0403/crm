require 'test_helper'

class EmialsControllerTest < ActionController::TestCase
  setup do
    @emial = emials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emial" do
    assert_difference('Emial.count') do
      post :create, emial: { asunto: @emial.asunto, empresacliente_id: @emial.empresacliente_id }
    end

    assert_redirected_to emial_path(assigns(:emial))
  end

  test "should show emial" do
    get :show, id: @emial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emial
    assert_response :success
  end

  test "should update emial" do
    patch :update, id: @emial, emial: { asunto: @emial.asunto, empresacliente_id: @emial.empresacliente_id }
    assert_redirected_to emial_path(assigns(:emial))
  end

  test "should destroy emial" do
    assert_difference('Emial.count', -1) do
      delete :destroy, id: @emial
    end

    assert_redirected_to emials_path
  end
end
