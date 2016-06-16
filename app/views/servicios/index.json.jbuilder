json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :codigo, :disponibilidad, :precio, :descripcion, :usuarios_id
  json.url servicio_url(servicio, format: :json)
end
