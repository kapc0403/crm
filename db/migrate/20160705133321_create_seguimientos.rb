class CreateSeguimientos < ActiveRecord::Migration
  def change
    create_table :seguimientos do |t|
      t.references :empresacliente, index: true, foreign_key: true
      t.references :tiposeguimiento, index: true, foreign_key: true
      t.text :descripcion
      t.references :usuario, index: true, foreign_key: true
      t.datetime :fecha

      t.timestamps null: false
    end
  end
end
