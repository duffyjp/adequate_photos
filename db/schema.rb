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

ActiveRecord::Schema.define(version: 20150711203324) do

  create_table "import_paths", force: :cascade do |t|
    t.string   "path_name"
    t.string   "file_count"
    t.string   "total_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "path_name"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "md5"
    t.string   "perceptual_hash"
    t.string   "status"
    t.integer  "width"
    t.integer  "height"
    t.string   "color"
    t.string   "exif_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "photos", ["file_size"], name: "index_photos_on_file_size"

end
