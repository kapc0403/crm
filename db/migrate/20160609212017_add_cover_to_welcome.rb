class AddCoverToWelcome < ActiveRecord::Migration
  def change
    add_attachment :welcomes, :cover
  end
end
