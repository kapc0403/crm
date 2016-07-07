class AddColumnWelcomes < ActiveRecord::Migration
  def change
    add_column :welcomes, :prefijoconsecutivo, :string
    add_column :welcomes, :sufijoconsecutivo, :float
  end
end
