require 'test_helper'

class DmEspecialidadesControllerTest < ActionController::TestCase
  setup do
    @dm_especialidade = dm_especialidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dm_especialidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dm_especialidade" do
    assert_difference('DmEspecialidade.count') do
      post :create, dm_especialidade: { especialidade: @dm_especialidade.especialidade }
    end

    assert_redirected_to dm_especialidade_path(assigns(:dm_especialidade))
  end

  test "should show dm_especialidade" do
    get :show, id: @dm_especialidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dm_especialidade
    assert_response :success
  end

  test "should update dm_especialidade" do
    patch :update, id: @dm_especialidade, dm_especialidade: { especialidade: @dm_especialidade.especialidade }
    assert_redirected_to dm_especialidade_path(assigns(:dm_especialidade))
  end

  test "should destroy dm_especialidade" do
    assert_difference('DmEspecialidade.count', -1) do
      delete :destroy, id: @dm_especialidade
    end

    assert_redirected_to dm_especialidades_path
  end
end
