class Tarea < ActiveRecord::Base
  belongs_to :usuarios
  belongs_to :empresaclientes
end
