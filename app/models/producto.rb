class Producto < ActiveRecord::Base
  belongs_to :proveedors
  belongs_to :detalle_factura
end
