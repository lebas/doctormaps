json.array!(@dm_dentista_especialidades) do |dm_dentista_especialidade|
  json.extract! dm_dentista_especialidade, :id, :dentista, :especialidade
  json.url dm_dentista_especialidade_url(dm_dentista_especialidade, format: :json)
end
