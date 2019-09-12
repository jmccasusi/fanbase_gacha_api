class CreateDeckCategoryRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :deck_category_relations do |t|
      t.references :deck, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
