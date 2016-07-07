require 'test_helper'

class ProcesoClientesControllerTest < ActionController::TestCase
  test "should get prospectos" do
    get :prospectos
    assert_response :success
  end

  test "should get clientes" do
    get :clientes
    assert_response :success
  end

end
