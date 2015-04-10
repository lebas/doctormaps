json.array!(@dm_planosaudes) do |dm_planosaude|
  json.extract! dm_planosaude, :id, :nome, :tipo
  json.url dm_planosaude_url(dm_planosaude, format: :json)
end
