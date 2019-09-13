class User < ApplicationRecord
    has_secure_password
    has_many :messages
    has_many :user_group_relations
    has_many :groups, through: :user_group_relations
    has_many :user_card_relations
    has_many :cards, through: :user_card_relations
end
