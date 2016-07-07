json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :nombre, :codigo, :disponibilidad, :precio, :descripción, :usuario_id
  json.url servicio_url(servicio, format: :json)
end
