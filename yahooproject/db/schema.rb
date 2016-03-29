# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160327154438) do

  create_table "admins", force: :cascade do |t|
    t.string   "source_name"
    t.string   "title"
    t.string   "link"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.text     "synopsis"
    t.string   "main_photo_file_name"
    t.string   "main_photo_content_type"
    t.integer  "main_photo_file_size"
    t.datetime "main_photo_updated_at"
    t.string   "second_featured_story_title"
    t.text     "second_featured_story_synopsis"
    t.string   "second_featured_story_link"
    t.string   "second_story_photo_file_name"
    t.string   "second_story_photo_content_type"
    t.integer  "second_story_photo_file_size"
    t.datetime "second_story_photo_updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_reviews", force: :cascade do |t|
    t.integer  "nyt_movie_id"
    t.text     "headline"
    t.string   "display_title"
    t.string   "mpaa_rating"
    t.string   "trailer_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "stories", force: :cascade do |t|
    t.text     "blurb"
    t.string   "source"
    t.datetime "when"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "link"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "zip_code"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "user_profile_photo_file_name"
    t.string   "user_profile_photo_content_type"
    t.integer  "user_profile_photo_file_size"
    t.datetime "user_profile_photo_updated_at"
  end

end
