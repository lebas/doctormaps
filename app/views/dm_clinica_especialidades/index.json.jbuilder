json.array!(@dm_clinica_especialidades) do |dm_clinica_especialidade|
  json.extract! dm_clinica_especialidade, :id, :clinica, :especialidade
  json.url dm_clinica_especialidade_url(dm_clinica_especialidade, format: :json)
end
