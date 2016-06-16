class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.integer :codigo
      t.string :disponibilidad
      t.integer :precio
      t.string :descripcion
      t.references :usuarios, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
