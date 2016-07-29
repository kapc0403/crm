json.array!(@productos_por_clientes) do |productos_por_cliente|
  json.extract! productos_por_cliente, :id, :usuario_id, :nombre, :marca, :referencia, :nroProductos, :fechaAdquisicion, :fechaCaducidad, :datosTecnicos, :serial
  json.url productos_por_cliente_url(productos_por_cliente, format: :json)
end
