class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :codigo
      t.string :fabricante
      t.string :disponibilidad
      t.integer :precio
      t.integer :cantidad
      t.string :descripcion
      t.references :proveedors, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
