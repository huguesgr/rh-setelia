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

ActiveRecord::Schema.define(version: 20140910154557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "admins", ["remember_token"], name: "index_admins_on_remember_token", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "description"
    t.integer  "user_id"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proficiencies", force: true do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proficiencies", ["skill_id"], name: "index_proficiencies_on_skill_id", using: :btree
  add_index "proficiencies", ["user_id", "skill_id"], name: "index_proficiencies_on_user_id_and_skill_id", using: :btree
  add_index "proficiencies", ["user_id"], name: "index_proficiencies_on_user_id", using: :btree

  create_table "skills", force: true do |t|
    t.string   "keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  create_table "speaks", force: true do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "address"
    t.string   "phone"
    t.integer  "mobility"
    t.boolean  "international_mobility"
    t.integer  "experience"
    t.integer  "salary"
    t.integer  "contract"
    t.string   "availability"
    t.integer  "interview_result"
    t.integer  "interview_state"
    t.string   "comment"
  end

end
