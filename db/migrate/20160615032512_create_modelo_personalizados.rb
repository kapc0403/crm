class CreateModeloPersonalizados < ActiveRecord::Migration
  def change
    create_table :modelo_personalizados do |t|
      t.string :colorApariencia
      t.string :homeW1
      t.string :homeW2
      t.string :homeW3
      t.string :homeW4
      t.string :homeW5
      t.string :homeW6
      t.string :homeW7
      t.string :homeW8
      t.string :homeW9
      t.string :homeW10
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
