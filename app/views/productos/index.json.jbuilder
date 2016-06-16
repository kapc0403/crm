json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :codigo, :fabricante, :disponibilidad, :precio, :cantidad, :descripcion, :proveedors_id
  json.url producto_url(producto, format: :json)
end
