require 'test_helper'

class DmDentistaControllerTest < ActionController::TestCase
  setup do
    @dm_dentistum = dm_dentista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dm_dentista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dm_dentistum" do
    assert_difference('DmDentistum.count') do
      post :create, dm_dentistum: { bairro: @dm_dentistum.bairro, cep: @dm_dentistum.cep, cidade: @dm_dentistum.cidade, cro: @dm_dentistum.cro, endereco: @dm_dentistum.endereco, especialidade: @dm_dentistum.especialidade, estado: @dm_dentistum.estado, inicio_atendimento: @dm_dentistum.inicio_atendimento, latitude: @dm_dentistum.latitude, logotipo: @dm_dentistum.logotipo, longitude: @dm_dentistum.longitude, nome: @dm_dentistum.nome, telefone: @dm_dentistum.telefone, terminio: @dm_dentistum.terminio }
    end

    assert_redirected_to dm_dentistum_path(assigns(:dm_dentistum))
  end

  test "should show dm_dentistum" do
    get :show, id: @dm_dentistum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dm_dentistum
    assert_response :success
  end

  test "should update dm_dentistum" do
    patch :update, id: @dm_dentistum, dm_dentistum: { bairro: @dm_dentistum.bairro, cep: @dm_dentistum.cep, cidade: @dm_dentistum.cidade, cro: @dm_dentistum.cro, endereco: @dm_dentistum.endereco, especialidade: @dm_dentistum.especialidade, estado: @dm_dentistum.estado, inicio_atendimento: @dm_dentistum.inicio_atendimento, latitude: @dm_dentistum.latitude, logotipo: @dm_dentistum.logotipo, longitude: @dm_dentistum.longitude, nome: @dm_dentistum.nome, telefone: @dm_dentistum.telefone, terminio: @dm_dentistum.terminio }
    assert_redirected_to dm_dentistum_path(assigns(:dm_dentistum))
  end

  test "should destroy dm_dentistum" do
    assert_difference('DmDentistum.count', -1) do
      delete :destroy, id: @dm_dentistum
    end

    assert_redirected_to dm_dentista_path
  end
end
