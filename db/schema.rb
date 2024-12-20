# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_12_09_191418) do
  create_table "comments_reactions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "user_comment_id", null: false
    t.integer "reaction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reaction_id"], name: "index_comments_reactions_on_reaction_id"
    t.index ["user_comment_id"], name: "index_comments_reactions_on_user_comment_id"
    t.index ["user_id"], name: "index_comments_reactions_on_user_id"
  end

  create_table "post_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "user_comment_id", null: false
    t.integer "user_post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_comment_id"], name: "index_post_comments_on_user_comment_id"
    t.index ["user_id"], name: "index_post_comments_on_user_id"
    t.index ["user_post_id"], name: "index_post_comments_on_user_post_id"
  end

  create_table "post_reactions", force: :cascade do |t|
    t.integer "reaction_id", null: false
    t.integer "user_post_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reaction_id"], name: "index_post_reactions_on_reaction_id"
    t.index ["user_id"], name: "index_post_reactions_on_user_id"
    t.index ["user_post_id"], name: "index_post_reactions_on_user_post_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_comments_on_user_id"
  end

  create_table "user_posts", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_posts_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments_reactions", "reactions"
  add_foreign_key "comments_reactions", "user_comments"
  add_foreign_key "comments_reactions", "users"
  add_foreign_key "post_comments", "user_comments"
  add_foreign_key "post_comments", "user_posts"
  add_foreign_key "post_comments", "users"
  add_foreign_key "post_reactions", "reactions"
  add_foreign_key "post_reactions", "user_posts"
  add_foreign_key "post_reactions", "users"
  add_foreign_key "user_comments", "users"
  add_foreign_key "user_posts", "users"
end
