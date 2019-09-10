class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :gacha_configs
      t.boolean :is_private

      t.timestamps
    end
  end
end
