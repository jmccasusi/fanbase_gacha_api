class UserCardRelation < ApplicationRecord
    belongs_to :user
    belongs_to :card
    belongs_to :group
end
  