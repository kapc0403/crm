class CreateDetalleFacturas < ActiveRecord::Migration
  def change
    create_table :detalle_facturas do |t|
      t.references :factura, index: true, foreign_key: true
      t.string :referenciaProducto
      t.integer :cantidad
      t.string :total
      t.string :descuento
      t.references :producto, index: true, foreign_key: true
      t.references :servicio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
