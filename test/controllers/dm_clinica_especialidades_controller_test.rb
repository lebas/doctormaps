require 'test_helper'

class DmClinicaEspecialidadesControllerTest < ActionController::TestCase
  setup do
    @dm_clinica_especialidade = dm_clinica_especialidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dm_clinica_especialidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dm_clinica_especialidade" do
    assert_difference('DmClinicaEspecialidade.count') do
      post :create, dm_clinica_especialidade: { clinica: @dm_clinica_especialidade.clinica, especialidade: @dm_clinica_especialidade.especialidade }
    end

    assert_redirected_to dm_clinica_especialidade_path(assigns(:dm_clinica_especialidade))
  end

  test "should show dm_clinica_especialidade" do
    get :show, id: @dm_clinica_especialidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dm_clinica_especialidade
    assert_response :success
  end

  test "should update dm_clinica_especialidade" do
    patch :update, id: @dm_clinica_especialidade, dm_clinica_especialidade: { clinica: @dm_clinica_especialidade.clinica, especialidade: @dm_clinica_especialidade.especialidade }
    assert_redirected_to dm_clinica_especialidade_path(assigns(:dm_clinica_especialidade))
  end

  test "should destroy dm_clinica_especialidade" do
    assert_difference('DmClinicaEspecialidade.count', -1) do
      delete :destroy, id: @dm_clinica_especialidade
    end

    assert_redirected_to dm_clinica_especialidades_path
  end
end
