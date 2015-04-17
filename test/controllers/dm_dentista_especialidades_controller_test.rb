require 'test_helper'

class DmDentistaEspecialidadesControllerTest < ActionController::TestCase
  setup do
    @dm_dentista_especialidade = dm_dentista_especialidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dm_dentista_especialidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dm_dentista_especialidade" do
    assert_difference('DmDentistaEspecialidade.count') do
      post :create, dm_dentista_especialidade: { dentista: @dm_dentista_especialidade.dentista, especialidade: @dm_dentista_especialidade.especialidade }
    end

    assert_redirected_to dm_dentista_especialidade_path(assigns(:dm_dentista_especialidade))
  end

  test "should show dm_dentista_especialidade" do
    get :show, id: @dm_dentista_especialidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dm_dentista_especialidade
    assert_response :success
  end

  test "should update dm_dentista_especialidade" do
    patch :update, id: @dm_dentista_especialidade, dm_dentista_especialidade: { dentista: @dm_dentista_especialidade.dentista, especialidade: @dm_dentista_especialidade.especialidade }
    assert_redirected_to dm_dentista_especialidade_path(assigns(:dm_dentista_especialidade))
  end

  test "should destroy dm_dentista_especialidade" do
    assert_difference('DmDentistaEspecialidade.count', -1) do
      delete :destroy, id: @dm_dentista_especialidade
    end

    assert_redirected_to dm_dentista_especialidades_path
  end
end
