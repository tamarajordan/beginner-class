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

ActiveRecord::Schema.define(version: 20170629185736) do

  create_table "courses", force: :cascade do |t|
    t.string "instructor"
    t.string "name"
    t.integer "price"
    t.integer "genre"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "promo_photo"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "course_id", null: false
    t.string "name"
    t.integer "number"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marketing_contents", force: :cascade do |t|
    t.integer "course_id", null: false
    t.string "intro_icon_1"
    t.string "intro_title_1"
    t.text "intro_content_1"
    t.string "intro_icon_2"
    t.string "intro_title_2"
    t.text "intro_content_2"
    t.string "description_title"
    t.string "description_photo"
    t.text "description_content"
    t.string "background_photo_1"
    t.string "feature_title_1"
    t.text "feature_content_1"
    t.string "feature_title_2"
    t.text "feature_content_2"
    t.string "feature_title_3"
    t.text "feature_content_3"
    t.string "background_photo_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.integer "course_id", null: false
    t.string "name"
    t.string "description"
    t.string "photo"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
