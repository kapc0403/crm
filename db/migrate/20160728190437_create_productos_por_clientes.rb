class CreateProductosPorClientes < ActiveRecord::Migration
  def change
    create_table :productos_por_clientes do |t|
      t.references :usuario, index: true, foreign_key: true
      t.string :nombre
      t.string :marca
      t.string :referencia
      t.string :nroProductos
      t.string :fechaAdquisicion
      t.string :fechaCaducidad
      t.text :datosTecnicos
      t.string :serial

      t.timestamps null: false
    end
  end
end
