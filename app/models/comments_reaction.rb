class CommentsReaction < ApplicationRecord
  belongs_to :user
  belongs_to :user_comment
  belongs_to :reaction
end
