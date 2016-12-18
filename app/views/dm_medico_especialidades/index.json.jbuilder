json.array!(@dm_medico_especialidades) do |dm_medico_especialidade|
  json.extract! dm_medico_especialidade, :id, :medico, :especialidade
  json.url dm_medico_especialidade_url(dm_medico_especialidade, format: :json)
end
