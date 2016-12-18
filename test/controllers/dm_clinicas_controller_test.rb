require 'test_helper'

class DmClinicasControllerTest < ActionController::TestCase
  setup do
    @dm_clinica = dm_clinicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dm_clinicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dm_clinica" do
    assert_difference('DmClinica.count') do
      post :create, dm_clinica: { bairro: @dm_clinica.bairro, cep: @dm_clinica.cep, cidade: @dm_clinica.cidade, endereco: @dm_clinica.endereco, especialidade: @dm_clinica.especialidade, estado: @dm_clinica.estado, inicio_atendimento: @dm_clinica.inicio_atendimento, latitude: @dm_clinica.latitude, logotipo: @dm_clinica.logotipo, longitude: @dm_clinica.longitude, nome: @dm_clinica.nome, telefone: @dm_clinica.telefone, terminio: @dm_clinica.terminio }
    end

    assert_redirected_to dm_clinica_path(assigns(:dm_clinica))
  end

  test "should show dm_clinica" do
    get :show, id: @dm_clinica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dm_clinica
    assert_response :success
  end

  test "should update dm_clinica" do
    patch :update, id: @dm_clinica, dm_clinica: { bairro: @dm_clinica.bairro, cep: @dm_clinica.cep, cidade: @dm_clinica.cidade, endereco: @dm_clinica.endereco, especialidade: @dm_clinica.especialidade, estado: @dm_clinica.estado, inicio_atendimento: @dm_clinica.inicio_atendimento, latitude: @dm_clinica.latitude, logotipo: @dm_clinica.logotipo, longitude: @dm_clinica.longitude, nome: @dm_clinica.nome, telefone: @dm_clinica.telefone, terminio: @dm_clinica.terminio }
    assert_redirected_to dm_clinica_path(assigns(:dm_clinica))
  end

  test "should destroy dm_clinica" do
    assert_difference('DmClinica.count', -1) do
      delete :destroy, id: @dm_clinica
    end

    assert_redirected_to dm_clinicas_path
  end
end
