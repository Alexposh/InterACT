class PostReaction < ApplicationRecord
  belongs_to :reaction
  belongs_to :user_post
  belongs_to :user
end
