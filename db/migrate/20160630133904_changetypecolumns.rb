class Changetypecolumns < ActiveRecord::Migration
  def change
    rename_column :empresaclientes, :tipoCedula, :numidentificacion
  end
end
