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

ActiveRecord::Schema.define(version: 20171121132313) do

  create_table "base_tintas", force: :cascade do |t|
    t.string "codigo"
    t.integer "tipo_de_linea_id"
    t.text "descripcion_base"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_de_linea_id"], name: "index_base_tintas_on_tipo_de_linea_id"
  end

  create_table "formula_tintas", force: :cascade do |t|
    t.integer "tinta_id"
    t.integer "base_tinta_id"
    t.float "cantidad"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_tinta_id"], name: "index_formula_tintas_on_base_tinta_id"
    t.index ["tinta_id"], name: "index_formula_tintas_on_tinta_id"
  end

  create_table "mallas", force: :cascade do |t|
    t.integer "num_malla"
    t.text "caracteristica"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "caracteristica"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tintas", force: :cascade do |t|
    t.string "codigo"
    t.string "pantone"
    t.integer "malla_id"
    t.string "tipo_de_unidad"
    t.float "cantida"
    t.float "mezcla_total"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["malla_id"], name: "index_tintas_on_malla_id"
  end

  create_table "tipos_de_lineas", force: :cascade do |t|
    t.string "descripcion_linea"
    t.string "caracteristica"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
