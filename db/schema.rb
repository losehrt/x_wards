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

ActiveRecord::Schema[7.0].define(version: 2022_06_08_000034) do
  create_table "pcrs", force: :cascade do |t|
    t.string "inpatient_seq"
    t.boolean "is_special_ward"
    t.integer "positived_days"
    t.string "patient_no"
    t.string "patient_name"
    t.string "patient_idno"
    t.string "ward_bed"
    t.string "vs_doctor_uid"
    t.string "vs_doctor_name"
    t.datetime "admitted_at"
    t.datetime "examined_at"
    t.datetime "reported_at"
    t.string "order_code"
    t.string "examined_result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
