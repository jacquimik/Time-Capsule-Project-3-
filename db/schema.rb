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

ActiveRecord::Schema.define(version: 20141121005606) do

  create_table "attachments", force: true do |t|
    t.string  "name"
    t.string  "url"
    t.integer "event_id"
  end

  create_table "children", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.datetime "date_of_birth"
    t.string   "gender"
    t.string   "eye_color"
    t.text     "image"
    t.integer  "user_id"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "location"
    t.text     "image"
    t.text     "description"
    t.integer  "child_id"
    t.float    "longitude"
    t.float    "latitude"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "email_confirmation"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
