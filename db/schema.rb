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

ActiveRecord::Schema.define(version: 20140504233634) do

  create_table "attempts", force: true do |t|
    t.integer  "user_id"
    t.integer  "route_id"
    t.date     "date_attempted"
    t.boolean  "flash"
    t.boolean  "completed"
    t.integer  "attempt_score"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.boolean  "camping"
    t.string   "rock_type"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "routes", force: true do |t|
    t.integer  "location_id"
    t.string   "name"
    t.integer  "grade",       limit: 255
    t.string   "beta"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "modifier"
    t.integer  "score"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "about"
    t.string   "contact"
    t.integer  "total_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "user_photo"
  end

end
