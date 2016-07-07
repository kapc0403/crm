class CreateEstadofacturas < ActiveRecord::Migration
  def change
    create_table :estadofacturas do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
