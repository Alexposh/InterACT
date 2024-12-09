class Comment < ApplicationRecord
  belongs_to :user
  has_many :comment_reactions
end
