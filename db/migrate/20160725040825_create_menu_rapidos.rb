class CreateMenuRapidos < ActiveRecord::Migration
  def change
    create_table :menu_rapidos do |t|
      t.references :usuario, index: true, foreign_key: true
      t.string :accesor1
      t.string :accesor2
      t.string :accesor3
      t.string :accesor4
      t.string :accesor5
      t.string :acceso6
      t.string :accesor7

      t.timestamps null: false
    end
  end
end
