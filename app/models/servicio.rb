class Servicio < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :detalle_factura
end
