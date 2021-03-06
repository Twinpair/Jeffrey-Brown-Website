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

ActiveRecord::Schema.define(version: 20180129091645) do

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "order_listed"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "information", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.text     "services_description"
    t.text     "photography_description"
    t.text     "contact_description"
    t.string   "header_image"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "email"
    t.string   "phone"
  end

  create_table "messages", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.string   "captcha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "order_listed"
    t.integer  "album_id"
    t.index ["album_id"], name: "index_photos_on_album_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "icon"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "order_listed"
  end

end
