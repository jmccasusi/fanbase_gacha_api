class Card < ApplicationRecord
    belongs_to :deck
    has_many :user_card_relations
    has_many :users, through: :user_card_relations
end
