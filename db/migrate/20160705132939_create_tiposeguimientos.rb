class CreateTiposeguimientos < ActiveRecord::Migration
  def change
    create_table :tiposeguimientos do |t|
      t.string :nombre
      t.boolean :activo

      t.timestamps null: false
    end
  end
end
