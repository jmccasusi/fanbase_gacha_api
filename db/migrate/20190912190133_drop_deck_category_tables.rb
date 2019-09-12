class DropDeckCategoryTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :deck_category_relations
  end
end
