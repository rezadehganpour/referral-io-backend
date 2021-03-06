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

ActiveRecord::Schema.define(version: 20160918175002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food", force: :cascade do |t|
    t.text    "name",     null: false
    t.text    "author",   null: false
    t.integer "rating",   null: false
    t.text    "category", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.json     "skills"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pgmigrations", id: false, force: :cascade do |t|
    t.integer  "id",                 default: "nextval('pgmigrations_id_seq'::regclass)", null: false
    t.string   "name",   limit: 255,                                                      null: false
    t.datetime "run_on",                                                                  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_users", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "user_id"
    t.float    "score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "level_id"
    t.integer  "reviewer_count"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "role_id"
  end

  create_table "wine", force: :cascade do |t|
    t.text    "name",     null: false
    t.integer "year",     null: false
    t.text    "vineyard", null: false
    t.text    "varietal", null: false
  end

end
