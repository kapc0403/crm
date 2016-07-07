json.array!(@estadofacturas) do |estadofactura|
  json.extract! estadofactura, :id, :nombre
  json.url estadofactura_url(estadofactura, format: :json)
end
