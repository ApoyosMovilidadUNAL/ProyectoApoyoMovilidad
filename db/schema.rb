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

ActiveRecord::Schema.define(version: 20170323044349) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documentos", force: :cascade do |t|
    t.string   "DOCU_NOMBRE", null: false
    t.string   "DOCU_RUTA",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string   "ESTU_NOMBRE",   null: false
    t.string   "ESTU_PASS",     null: false
    t.string   "ESTU_EMAIL",    null: false
    t.integer  "ESTU_ROL"
    t.integer  "ESTU_CEDULA",   null: false
    t.string   "ESTU_FACULTAD", null: false
    t.string   "ESTU_CARRERA",  null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "profesores", force: :cascade do |t|
    t.string   "PROFE_NOMBRE", null: false
    t.string   "PROFE_PASS",   null: false
    t.string   "PROFE_EMAIL",  null: false
    t.integer  "PROFE_ROL"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  

  create_table "solicitudes", force: :cascade do |t|
    t.integer  "SOLI_ESTADO",    null: false
    t.integer  "documentos_id"
    t.integer  "soportes_id"
    t.integer  "estudiantes_id"
    t.integer  "profesores_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["documentos_id"], name: "index_solicitudes_on_documentos_id", using: :btree
    t.index ["estudiantes_id"], name: "index_solicitudes_on_estudiantes_id", using: :btree
    t.index ["profesores_id"], name: "index_solicitudes_on_profesores_id", using: :btree
    t.index ["soportes_id"], name: "index_solicitudes_on_soportes_id", using: :btree
  end

  create_table "soportes", force: :cascade do |t|
    t.string   "SOPOR_NOMBRE", null: false
    t.string   "SOPOR_RUTA",   null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "solicitudes", "documentos", column: "documentos_id"
  add_foreign_key "solicitudes", "estudiantes", column: "estudiantes_id"
  add_foreign_key "solicitudes", "profesores", column: "profesores_id"
  add_foreign_key "solicitudes", "soportes", column: "soportes_id"
end
