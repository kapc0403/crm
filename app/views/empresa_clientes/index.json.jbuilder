json.array!(@empresa_clientes) do |empresa_cliente|
  json.extract! empresa_cliente, :id, :tipoCedula, :cedula, :fechaNacimiento, :personaNombre, :personaApellido, :personaTelefono, :personaMovil, :personaEmail, :personaDireccion, :nit, :empresaNombre, :empresaDireccion, :empresaTelefono, :empresaEmail, :paginaWeb, :foto, :tipo, :fechaInicio, :fechaFin, :usuarios_id
  json.url empresa_cliente_url(empresa_cliente, format: :json)
end
