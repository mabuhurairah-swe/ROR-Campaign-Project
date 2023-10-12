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

ActiveRecord::Schema[7.1].define(version: 2023_10_12_111400) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "title", null: false
    t.text "purpose"
    t.string "estimated_duration", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "campaigns_tags", id: false, force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "campaign_id", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "title", null: false
    t.string "commentable_type", null: false
    t.bigint "commentable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "discussion_topics", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "campaign_id", null: false
    t.index ["campaign_id"], name: "index_discussion_topics_on_campaign_id"
    t.index ["user_id"], name: "index_discussion_topics_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "parent_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_tag_id"], name: "index_tags_on_parent_tag_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "username", null: false
    t.string "status", null: false
    t.string "profession"
    t.string "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
  end

  add_foreign_key "campaigns", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "discussion_topics", "campaigns"
  add_foreign_key "discussion_topics", "users"
  add_foreign_key "tags", "tags", column: "parent_tag_id"
end
