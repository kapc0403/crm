class Seguimiento < ActiveRecord::Base
  belongs_to :empresacliente
  belongs_to :tiposeguimiento
  belongs_to :usuario
end
