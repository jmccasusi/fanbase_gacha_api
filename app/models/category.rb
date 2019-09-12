class Category < ApplicationRecord
    has_many :deck_category_relations
    has_many :decks, through: :deck_category_relations
    has_many :group_category_relations
    has_many :groups, through: :group_category_relations
end
