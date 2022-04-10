# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_10_002520) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "codes", force: :cascade do |t|
    t.integer "d_codigo"
    t.string "d_asenta", limit: 200
    t.string "d_tipo_asenta", limit: 200
    t.string "d_mnpio", limit: 200
    t.string "d_estado", limit: 200
    t.string "d_ciudad", limit: 200
    t.integer "d_CP"
    t.integer "c_estado"
    t.integer "c_oficina"
    t.integer "c_CP"
    t.integer "c_tipo_asenta"
    t.integer "c_mnpio"
    t.integer "id_asenta_cpcons"
    t.string "d_zona", limit: 200
    t.integer "c_cve_ciudad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
