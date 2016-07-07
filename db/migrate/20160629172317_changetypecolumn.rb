class Changetypecolumn < ActiveRecord::Migration
  def change
    change_column :welcomes, :sufijoconsecutivo, :integer
  end
end
