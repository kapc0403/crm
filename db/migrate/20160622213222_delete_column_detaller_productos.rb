class DeleteColumnDetallerProductos < ActiveRecord::Migration
  def change
    remove_column :detalle_facturas, :referenciaProducto
  end
end
