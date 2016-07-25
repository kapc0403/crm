require 'test_helper'

class WidgetsControllerTest < ActionController::TestCase
  setup do
    @widget = widgets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:widgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create widget" do
    assert_difference('Widget.count') do
      post :create, widget: { colorlayout: @widget.colorlayout, usuario_id: @widget.usuario_id, w10: @widget.w10, w11: @widget.w11, w12: @widget.w12, w1: @widget.w1, w2: @widget.w2, w3: @widget.w3, w4: @widget.w4, w5: @widget.w5, w6: @widget.w6, w7: @widget.w7, w8: @widget.w8, w9: @widget.w9 }
    end

    assert_redirected_to widget_path(assigns(:widget))
  end

  test "should show widget" do
    get :show, id: @widget
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @widget
    assert_response :success
  end

  test "should update widget" do
    patch :update, id: @widget, widget: { colorlayout: @widget.colorlayout, usuario_id: @widget.usuario_id, w10: @widget.w10, w11: @widget.w11, w12: @widget.w12, w1: @widget.w1, w2: @widget.w2, w3: @widget.w3, w4: @widget.w4, w5: @widget.w5, w6: @widget.w6, w7: @widget.w7, w8: @widget.w8, w9: @widget.w9 }
    assert_redirected_to widget_path(assigns(:widget))
  end

  test "should destroy widget" do
    assert_difference('Widget.count', -1) do
      delete :destroy, id: @widget
    end

    assert_redirected_to widgets_path
  end
end
