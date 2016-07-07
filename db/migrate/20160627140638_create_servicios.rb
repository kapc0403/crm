class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.string :codigo
      t.string :disponibilidad
      t.string :precio
      t.string :descripción
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
