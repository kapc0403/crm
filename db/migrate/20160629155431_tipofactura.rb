class Tipofactura < ActiveRecord::Migration
  def change
    remove_column :usuarios, :estado
  end
end
