json.array!(@dm_especialidades) do |dm_especialidade|
  json.extract! dm_especialidade, :id, :especialidade
  json.url dm_especialidade_url(dm_especialidade, format: :json)
end
