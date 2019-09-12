class CreateGroupCategoryRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :group_category_relations do |t|
        t.integer :group_id, null: false
        t.integer :category_id, null:false
      t.timestamps
    end
  end
end
