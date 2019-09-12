class AddLikeToUserCardRelation < ActiveRecord::Migration[6.0]
  def change
    add_column :user_card_relations, :like, :boolean, default: false
  end
end
