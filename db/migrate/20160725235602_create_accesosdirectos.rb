class CreateAccesosdirectos < ActiveRecord::Migration
  def change
    create_table :accesosdirectos do |t|
      t.references :usuario, index: true, foreign_key: true
      t.string :icon
      t.string :nombre
      t.string :url

      t.timestamps null: false
    end
  end
end
