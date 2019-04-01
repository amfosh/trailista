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

ActiveRecord::Schema.define(version: 2019_04_01_005457) do

  create_table "comments", force: :cascade do |t|
    t.integer "hike_id"
    t.text "body"
  end

  create_table "fav_hikes", force: :cascade do |t|
    t.integer "hike_id"
    t.integer "user_id"
  end

  create_table "hikes", force: :cascade do |t|
    t.string "title"
    t.text "overview"
    t.string "image"
    t.float "length"
    t.string "ascent"
    t.string "descent"
    t.float "ratings"
    t.string "difficulty"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.string "image"
  end

end
