class CreateDeckCategoryRelation < ActiveRecord::Migration[6.0]
  def change
    create_table :deck_category_relations do |t|
      t.integer :deck_id, null: false
      t.integer :category_id, null: false
    end
  end
end
