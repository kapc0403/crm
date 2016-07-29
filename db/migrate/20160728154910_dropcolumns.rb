class Dropcolumns < ActiveRecord::Migration
  def change 
    remove_column :empresaclientes, :fechaInicio
    remove_column :empresaclientes, :fechaFin
  end
end
