require 'test_helper'

class DmMedicosControllerTest < ActionController::TestCase
  setup do
    @dm_medico = dm_medicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dm_medicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dm_medico" do
    assert_difference('DmMedico.count') do
      post :create, dm_medico: { bairro: @dm_medico.bairro, cep: @dm_medico.cep, cidade: @dm_medico.cidade, crm: @dm_medico.crm, endereco: @dm_medico.endereco, especialidade: @dm_medico.especialidade, estado: @dm_medico.estado, inicio_atendimento: @dm_medico.inicio_atendimento, latitude: @dm_medico.latitude, logotipo: @dm_medico.logotipo, longitude: @dm_medico.longitude, nome: @dm_medico.nome, telefone: @dm_medico.telefone, terminio: @dm_medico.terminio }
    end

    assert_redirected_to dm_medico_path(assigns(:dm_medico))
  end

  test "should show dm_medico" do
    get :show, id: @dm_medico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dm_medico
    assert_response :success
  end

  test "should update dm_medico" do
    patch :update, id: @dm_medico, dm_medico: { bairro: @dm_medico.bairro, cep: @dm_medico.cep, cidade: @dm_medico.cidade, crm: @dm_medico.crm, endereco: @dm_medico.endereco, especialidade: @dm_medico.especialidade, estado: @dm_medico.estado, inicio_atendimento: @dm_medico.inicio_atendimento, latitude: @dm_medico.latitude, logotipo: @dm_medico.logotipo, longitude: @dm_medico.longitude, nome: @dm_medico.nome, telefone: @dm_medico.telefone, terminio: @dm_medico.terminio }
    assert_redirected_to dm_medico_path(assigns(:dm_medico))
  end

  test "should destroy dm_medico" do
    assert_difference('DmMedico.count', -1) do
      delete :destroy, id: @dm_medico
    end

    assert_redirected_to dm_medicos_path
  end
end
