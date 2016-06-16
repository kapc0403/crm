json.array!(@ciudads) do |ciudad|
  json.extract! ciudad, :id, :nombreCiudad, :Departamento_id
  json.url ciudad_url(ciudad, format: :json)
end
