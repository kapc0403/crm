json.array!(@acceso_rapidos) do |acceso_rapido|
  json.extract! acceso_rapido, :id, :nombre, :url
  json.url acceso_rapido_url(acceso_rapido, format: :json)
end
