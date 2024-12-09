class CreateCommentsReactions < ActiveRecord::Migration[7.1]
  def change
    create_table :comments_reactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :user_comment, null: false, foreign_key: true
      t.references :reaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
