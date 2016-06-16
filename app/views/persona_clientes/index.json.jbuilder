json.array!(@persona_clientes) do |persona_cliente|
  json.extract! persona_cliente, :id, :tipoCedula, :cedula, :fechaNacimiento, :nombre, :apellido, :telefono, :movil, :email, :direccion, :foto, :tipo, :fechaInicio, :fechaFin, :usuarios_id
  json.url persona_cliente_url(persona_cliente, format: :json)
end
