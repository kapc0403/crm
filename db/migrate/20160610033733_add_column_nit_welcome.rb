class AddColumnNitWelcome < ActiveRecord::Migration
  def change
    add_column :welcomes, :nit, :string
  end
end
