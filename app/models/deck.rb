class Deck < ApplicationRecord
    has_many :cards
    has_many :deck_category_relations
    has_many :categories, through: :deck_category_relations
end
