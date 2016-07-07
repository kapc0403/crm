class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.date :fecha
      t.date :fechafin
      t.string :ordencompra
      t.string :estado
      t.string :condiciones
      t.references :usuario, index: true, foreign_key: true
      t.references :empresacliente, index: true, foreign_key: true
      t.references :personacliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
