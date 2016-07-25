class CreateAccesoRapidos < ActiveRecord::Migration
  def change
    create_table :acceso_rapidos do |t|
      t.string :nombre
      t.string :url

      t.timestamps null: false
    end
  end
end
