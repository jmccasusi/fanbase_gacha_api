class UserCardRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_card_relations do |t|
      t.integer :user_id, null: false
      t.integer :card_id, null: false
      t.integer :group_id, null: false

      t.timestamps
    end
  end
end
