require 'test_helper'

class PreferencialsControllerTest < ActionController::TestCase
  setup do
    @preferencial = preferencials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preferencials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preferencial" do
    assert_difference('Preferencial.count') do
      post :create, preferencial: { cliente_id: @preferencial.cliente_id, nombre: @preferencial.nombre }
    end

    assert_redirected_to preferencial_path(assigns(:preferencial))
  end

  test "should show preferencial" do
    get :show, id: @preferencial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preferencial
    assert_response :success
  end

  test "should update preferencial" do
    patch :update, id: @preferencial, preferencial: { cliente_id: @preferencial.cliente_id, nombre: @preferencial.nombre }
    assert_redirected_to preferencial_path(assigns(:preferencial))
  end

  test "should destroy preferencial" do
    assert_difference('Preferencial.count', -1) do
      delete :destroy, id: @preferencial
    end

    assert_redirected_to preferencials_path
  end
end
