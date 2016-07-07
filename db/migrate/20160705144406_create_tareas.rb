class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :asunto
      t.string :estado
      t.string :prioridad
      t.string :descripcion
      t.date :fechaInicio
      t.date :fechaFin
      t.references :usuarios, index: true, foreign_key: true
      t.references :empresaclientes, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
