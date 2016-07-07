class DeleteAndAddColumncoverToUsuarios < ActiveRecord::Migration
  def change
    remove_column :usuarios, :foto
    add_attachment :usuarios, :foto
  end
end
