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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170403205639) do
=======
ActiveRecord::Schema.define(version: 20170405113113) do
>>>>>>> Prueba-back

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string   "docu_name",  null: false
    t.string   "docu_ruta",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string   "pro_name",   null: false
    t.string   "pro_pass"
<<<<<<< HEAD
    t.integer  "pro_rol",    null: false
    t.string   "pro_email",  null: false
=======
    t.string   "pro_email",  null: false
    t.integer  "pro_rol",    null: false
>>>>>>> Prueba-back
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "req_estado",      null: false
    t.text     "req_descripcion", null: false
    t.integer  "student_id"
    t.integer  "professor_id"
    t.integer  "document_id"
    t.integer  "support_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["document_id"], name: "index_requests_on_document_id", using: :btree
    t.index ["professor_id"], name: "index_requests_on_professor_id", using: :btree
    t.index ["student_id"], name: "index_requests_on_student_id", using: :btree
    t.index ["support_id"], name: "index_requests_on_support_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
<<<<<<< HEAD
    t.string   "stu_name",     null: false
    t.string   "stu_pass"
    t.string   "stu_email",    null: false
    t.integer  "stu_rol",      null: false
    t.integer  "stu_id",       null: false
    t.string   "stu_facultad", null: false
    t.string   "stu_carrera",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
=======
    t.string   "stu_name",           null: false
    t.string   "stu_pass"
    t.string   "stu_email",          null: false
    t.integer  "stu_rol",            null: false
    t.integer  "stu_identification", null: false
    t.string   "stu_facultad",       null: false
    t.string   "stu_carrera",        null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
>>>>>>> Prueba-back
  end

  create_table "supports", force: :cascade do |t|
    t.string   "sup_name",   null: false
    t.string   "sup_ruta",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "requests", "documents"
  add_foreign_key "requests", "professors"
  add_foreign_key "requests", "students"
  add_foreign_key "requests", "supports"
end
