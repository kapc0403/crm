json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :nombreDepartamento
  json.url departamento_url(departamento, format: :json)
end
