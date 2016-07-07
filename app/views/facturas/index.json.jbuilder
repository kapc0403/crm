json.array!(@facturas) do |factura|
  json.extract! factura, :id, :fecha, :fechafin, :ordencompra, :estadofactura_id, :empresa_clientes_id, :persona_clientes_id, :usuario_id, :condiciones
  json.url factura_url(factura, format: :json)
end
