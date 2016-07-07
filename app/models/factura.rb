class Factura < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :empresacliente
  belongs_to :personacliente
  belongs_to :estadofactura
  belongs_to :welcome
end
