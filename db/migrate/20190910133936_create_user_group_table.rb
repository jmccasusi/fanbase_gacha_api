class CreateUserGroupTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_group_relations do |t|
      t.integer :user_id
      t.integer :group_id
    end
  end
end
