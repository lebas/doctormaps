json.array!(@dm_medicos) do |dm_medico|
  json.extract! dm_medico, :id, :especialidade, :nome, :endereco, :bairro, :cep, :cidade, :estado, :crm, :telefone, :logotipo, :latitude, :longitude, :inicio_atendimento, :terminio
  json.url dm_medico_url(dm_medico, format: :json)
end
