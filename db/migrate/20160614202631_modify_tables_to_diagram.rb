class ModifyTablesToDiagram < ActiveRecord::Migration
  def change
    remove_column :usuarios, :creadoFechayPor
    remove_column :usuarios, :cargo
    rename_column :usuarios, :telOficina, :telefono
    rename_column :usuarios, :telPersonal, :movil
    rename_column :usuarios, :colorLayout, :estado
  end
end
