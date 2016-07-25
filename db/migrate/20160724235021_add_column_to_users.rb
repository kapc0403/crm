class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :usuarios, :estado, :string
  end
end
