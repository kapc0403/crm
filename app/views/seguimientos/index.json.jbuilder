json.array!(@seguimientos) do |seguimiento|
  json.extract! seguimiento, :id, :empresacliente_id, :tiposeguimiento_id, :descripcion, :usuario_id, :fecha
  json.url seguimiento_url(seguimiento, format: :json)
end
