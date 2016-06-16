json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :tipoCedula, :cedula, :fechaNacimiento, :personaNombre, :personaApellido, :personaTelefono, :personaMovil, :personaEmail, :personaDireccion, :nit, :empresaNombre, :empresaDireccion, :empresaTelefono, :empresaEmail, :paginaWeb, :foto, :cuentaContable, :fechaInicio, :fechaFin, :usuarios_id
  json.url proveedor_url(proveedor, format: :json)
end
