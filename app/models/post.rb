class Post < ApplicationRecord
  belongs_to :user
  has_many :post_reactions
  has_many :comments
end
