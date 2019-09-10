class EditGroupTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :groups, :gacha_configs
    add_column :groups, :roll_interval, :integer
    add_column :groups, :claim_interval, :integer
  end
end
