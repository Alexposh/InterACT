class CreatePostComments < ActiveRecord::Migration[7.1]
  def change
    create_table :post_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :user_comment, null: false, foreign_key: true
      t.references :user_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
