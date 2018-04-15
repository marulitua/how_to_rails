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

ActiveRecord::Schema.define(version: 20180414212236) do

  create_table "achivements", force: :cascade do |t|
    t.string   "item"
    t.integer  "experience_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["experience_id"], name: "index_achivements_on_experience_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "contactable_type"
    t.integer  "contactable_id"
    t.index ["contactable_type", "contactable_id"], name: "index_contacts_on_contactable_type_and_contactable_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string   "degree"
    t.string   "institution"
    t.string   "location"
    t.string   "from"
    t.string   "until"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "company"
    t.string   "position"
    t.string   "location"
    t.string   "from"
    t.string   "until"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_experiences_on_user_id"
  end

  create_table "honors", force: :cascade do |t|
    t.string   "award"
    t.string   "event"
    t.string   "location"
    t.integer  "year"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_honors_on_user_id"
  end

  create_table "references", force: :cascade do |t|
    t.string   "name"
    t.string   "organization"
    t.string   "location"
    t.string   "position"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_references_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "category"
    t.string   "item"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_skills_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "position"
    t.string   "enthusiast"
    t.string   "address"
    t.string   "quote"
    t.string   "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
