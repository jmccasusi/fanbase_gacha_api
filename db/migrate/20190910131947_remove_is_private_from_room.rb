class RemoveIsPrivateFromRoom < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :is_private
  end
end
