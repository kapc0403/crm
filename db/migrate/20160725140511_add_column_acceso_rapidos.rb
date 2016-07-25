class AddColumnAccesoRapidos < ActiveRecord::Migration
  def change
    add_column :acceso_rapidos, :icon, :string
  end
end
