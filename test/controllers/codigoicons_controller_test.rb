require 'test_helper'

class CodigoiconsControllerTest < ActionController::TestCase
  setup do
    @codigoicon = codigoicons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:codigoicons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create codigoicon" do
    assert_difference('Codigoicon.count') do
      post :create, codigoicon: {  }
    end

    assert_redirected_to codigoicon_path(assigns(:codigoicon))
  end

  test "should show codigoicon" do
    get :show, id: @codigoicon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @codigoicon
    assert_response :success
  end

  test "should update codigoicon" do
    patch :update, id: @codigoicon, codigoicon: {  }
    assert_redirected_to codigoicon_path(assigns(:codigoicon))
  end

  test "should destroy codigoicon" do
    assert_difference('Codigoicon.count', -1) do
      delete :destroy, id: @codigoicon
    end

    assert_redirected_to codigoicons_path
  end
end
