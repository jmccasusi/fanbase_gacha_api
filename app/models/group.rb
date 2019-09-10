class Group < ApplicationRecord
    has_many :rooms
    has_many :user_group_relations
    has_many :users, through: :user_group_relations
    belongs_to :owner, class_name: :User, foreign_key: :owner_id
end
