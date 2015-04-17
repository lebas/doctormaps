require 'test_helper'

class DmMedicoEspecialidadesControllerTest < ActionController::TestCase
  setup do
    @dm_medico_especialidade = dm_medico_especialidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dm_medico_especialidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dm_medico_especialidade" do
    assert_difference('DmMedicoEspecialidade.count') do
      post :create, dm_medico_especialidade: { especialidade: @dm_medico_especialidade.especialidade, medico: @dm_medico_especialidade.medico }
    end

    assert_redirected_to dm_medico_especialidade_path(assigns(:dm_medico_especialidade))
  end

  test "should show dm_medico_especialidade" do
    get :show, id: @dm_medico_especialidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dm_medico_especialidade
    assert_response :success
  end

  test "should update dm_medico_especialidade" do
    patch :update, id: @dm_medico_especialidade, dm_medico_especialidade: { especialidade: @dm_medico_especialidade.especialidade, medico: @dm_medico_especialidade.medico }
    assert_redirected_to dm_medico_especialidade_path(assigns(:dm_medico_especialidade))
  end

  test "should destroy dm_medico_especialidade" do
    assert_difference('DmMedicoEspecialidade.count', -1) do
      delete :destroy, id: @dm_medico_especialidade
    end

    assert_redirected_to dm_medico_especialidades_path
  end
end
