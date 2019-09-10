class User < ApplicationRecord
    has_many :messages
    has_many :user_group_relations
    has_many :groups, through: :user_group_relations
end
