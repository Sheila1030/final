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

ActiveRecord::Schema.define(version: 20140606043359) do

  create_table "activities", force: true do |t|
    t.string "activity"
    t.string "intensity"
    t.string "equipment"
    t.string "photo_url"
  end

  create_table "combos", force: true do |t|
    t.string "activity_id"
    t.string "location_id"
    t.string "type_id"
  end

  create_table "locations", force: true do |t|
    t.string "name"
    t.string "address"
    t.string "loc_photo"
    t.string "schedule_link"
    t.string "website_link"
  end


  create_table "types", force: true do |t|
    t.string "name"
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "workouts", force: true do |t|
    t.string   "user_id"
    t.string   "combo_id"
    t.datetime "created_at"
    t.date     "day"
    t.time     "start_time"
    t.time     "end_time"
  end

end
