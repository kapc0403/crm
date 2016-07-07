class Changecolumname < ActiveRecord::Migration
  def change
    rename_column :facturas, :estadofacturas_id, :estadofactura_id
  end
end
