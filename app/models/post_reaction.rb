class PostReaction < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :reactions
end
