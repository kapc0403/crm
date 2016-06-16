class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :nombreEmpresa
      t.string :moneda
      t.string :nombreEncargado
      t.string :telEncargado
      t.string :telEmpresa
      t.string :direccionEmpresa
      t.string :correoEncargado

      t.timestamps null: false
    end
  end
end
