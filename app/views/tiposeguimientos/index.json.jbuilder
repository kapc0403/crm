json.array!(@tiposeguimientos) do |tiposeguimiento|
  json.extract! tiposeguimiento, :id, :nombre, :activo
  json.url tiposeguimiento_url(tiposeguimiento, format: :json)
end
