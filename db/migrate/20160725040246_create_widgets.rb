class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.references :usuario, index: true, foreign_key: true
      t.string :w1
      t.string :w2
      t.string :w3
      t.string :w4
      t.string :w5
      t.string :w6
      t.string :w7
      t.string :w8
      t.string :w9
      t.string :w10
      t.string :w11
      t.string :w12
      t.string :colorlayout

      t.timestamps null: false
    end
  end
end
