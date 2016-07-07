class DetalleFactura < ActiveRecord::Base
  belongs_to :factura
  has_one :producto
  has_one :servicio
end
