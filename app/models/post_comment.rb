class PostComment < ApplicationRecord
  belongs_to :user
  belongs_to :user_comment
  belongs_to :user_post
end
