class Deleteestadofactura < ActiveRecord::Migration
  def change
    remove_column :facturas, :estado
  end
end
