class AddRelationEstadofacturaWithFactura < ActiveRecord::Migration
  def change
    add_reference :facturas, :estadofacturas, index: true
  end
end
