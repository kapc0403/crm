class Deletetable < ActiveRecord::Migration
  def change
    drop_table :personaclientes
  end
end
