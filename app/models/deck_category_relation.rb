class DeckCategoryRelation < ApplicationRecord
  belongs_to :deck
  belongs_to :category
end
