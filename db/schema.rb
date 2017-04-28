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

ActiveRecord::Schema.define(version: 20170425194447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string   "docu_name",  null: false
    t.string   "docu_ruta",  null: false
    t.integer  "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_documents_on_request_id", using: :btree
  end

  create_table "professors", force: :cascade do |t|
    t.string   "pro_name",   null: false
    t.string   "pro_email",  null: false
    t.integer  "pro_rol",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "req_estado",      null: false
    t.text     "req_descripcion", null: false
    t.integer  "student_id"
    t.integer  "professor_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["professor_id"], name: "index_requests_on_professor_id", using: :btree
    t.index ["student_id"], name: "index_requests_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "stu_name",           null: false
    t.string   "stu_email",          null: false
    t.integer  "stu_rol",            null: false
    t.integer  "stu_identification", null: false
    t.string   "stu_facultad",       null: false
    t.string   "stu_carrera",        null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "supports", force: :cascade do |t|
    t.string   "sup_name",   null: false
    t.string   "sup_ruta",   null: false
    t.integer  "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_supports_on_request_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "documents", "requests"
  add_foreign_key "requests", "professors"
  add_foreign_key "requests", "students"
  add_foreign_key "supports", "requests"
end
