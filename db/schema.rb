# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20210807075716) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "domestic", default: false
    t.boolean "world", default: false
    t.boolean "business", default: false
    t.boolean "entertainment", default: false
    t.boolean "sports", default: false
    t.boolean "it", default: false
    t.boolean "science", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news_items", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category", null: false
    t.index ["category"], name: "index_news_items_on_category"
    t.index ["title"], name: "index_news_items_on_title"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "favorite"
    t.index ["name"], name: "index_users_on_name"
  end

end
