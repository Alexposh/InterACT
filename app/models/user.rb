class User < ApplicationRecord
  belongs_to :user_roles
  has_many :comments
  has_many :posts
  has_many :comment_reactions
  has_many :post_reactions
end
