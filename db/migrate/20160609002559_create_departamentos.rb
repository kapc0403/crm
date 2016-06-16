class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nombreDepartamento

      t.timestamps null: false
    end
  end
end
