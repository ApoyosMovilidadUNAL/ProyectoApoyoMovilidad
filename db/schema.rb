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

ActiveRecord::Schema.define(version: 20170428024900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.string   "route"
    t.integer  "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_documents_on_request_id", using: :btree
  end

  create_table "professors", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "lastname",   null: false
    t.string   "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "state",        null: false
    t.text     "description"
    t.integer  "amount",       null: false
    t.string   "place",        null: false
    t.integer  "type_req"
    t.integer  "student_id"
    t.integer  "professor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["professor_id"], name: "index_requests_on_professor_id", using: :btree
    t.index ["student_id"], name: "index_requests_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "lastname",       null: false
    t.string   "email",          null: false
    t.integer  "rol",            null: false
    t.integer  "identification", null: false
    t.string   "faculty",        null: false
    t.string   "career",         null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "supports", force: :cascade do |t|
    t.string   "name"
    t.string   "route"
    t.integer  "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_supports_on_request_id", using: :btree
  end

  add_foreign_key "documents", "requests"
  add_foreign_key "requests", "professors"
  add_foreign_key "requests", "students"
  add_foreign_key "supports", "requests"
end
