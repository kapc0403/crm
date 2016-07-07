json.array!(@detalle_facturas) do |detalle_factura|
  json.extract! detalle_factura, :id, :factura_id, :cantidad, :total, :descuento, :producto_id, :servicio_id
  json.url detalle_factura_url(detalle_factura, format: :json)
end
