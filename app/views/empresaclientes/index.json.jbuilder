json.array!(@empresaclientes) do |empresacliente|
  json.extract! empresacliente, :id, :numidentificacion, :fechaNacimiento, :personaNombre, :personaApellido, :personaTelefono, :personaMovil, :personaEmail, :personaDireccion, :nit, :empresaNombre, :empresaDireccion, :empresaTelefono, :empresaEmail, :paginaWeb, :foto, :tipo, :usuario_id
  json.url empresacliente_url(empresacliente, format: :json)
end
