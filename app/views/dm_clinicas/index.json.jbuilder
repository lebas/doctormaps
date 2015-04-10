json.array!(@dm_clinicas) do |dm_clinica|
  json.extract! dm_clinica, :id, :especialidade, :nome, :endereco, :bairro, :cep, :cidade, :estado, :telefone, :logotipo, :latitude, :longitude, :inicio_atendimento, :terminio
  json.url dm_clinica_url(dm_clinica, format: :json)
end
