class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :nombreCiudad
      t.references :Departamento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
