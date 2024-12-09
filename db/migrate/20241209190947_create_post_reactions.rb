class CreatePostReactions < ActiveRecord::Migration[7.1]
  def change
    create_table :post_reactions do |t|
      t.references :reaction, null: false, foreign_key: true
      t.references :user_post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
