json.array!(@dm_dentista) do |dm_dentistum|
  json.extract! dm_dentistum, :id, :especialidade, :nome, :endereco, :bairro, :cep, :cidade, :estado, :cro, :telefone, :logotipo, :latitude, :longitude, :inicio_atendimento, :terminio
  json.url dm_dentistum_url(dm_dentistum, format: :json)
end
