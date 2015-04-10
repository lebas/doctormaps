require 'test_helper'

class DmPlanosaudesControllerTest < ActionController::TestCase
  setup do
    @dm_planosaude = dm_planosaudes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dm_planosaudes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dm_planosaude" do
    assert_difference('DmPlanosaude.count') do
      post :create, dm_planosaude: { nome: @dm_planosaude.nome, tipo: @dm_planosaude.tipo }
    end

    assert_redirected_to dm_planosaude_path(assigns(:dm_planosaude))
  end

  test "should show dm_planosaude" do
    get :show, id: @dm_planosaude
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dm_planosaude
    assert_response :success
  end

  test "should update dm_planosaude" do
    patch :update, id: @dm_planosaude, dm_planosaude: { nome: @dm_planosaude.nome, tipo: @dm_planosaude.tipo }
    assert_redirected_to dm_planosaude_path(assigns(:dm_planosaude))
  end

  test "should destroy dm_planosaude" do
    assert_difference('DmPlanosaude.count', -1) do
      delete :destroy, id: @dm_planosaude
    end

    assert_redirected_to dm_planosaudes_path
  end
end
