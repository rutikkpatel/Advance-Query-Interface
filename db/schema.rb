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

ActiveRecord::Schema[7.0].define(version: 2022_10_10_124158) do
  create_table "designations", force: :cascade do |t|
    t.string "designation_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "contact_number"
    t.integer "age"
    t.integer "gender"
    t.integer "designation_id", null: false
    t.date "joining_date"
    t.date "birth_date"
    t.float "salary"
    t.integer "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["designation_id"], name: "index_employees_on_designation_id"
  end

  create_table "leave_plans", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "leave_type"
    t.text "leave_reason"
    t.date "leave_from"
    t.date "leave_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_leave_plans_on_employee_id"
  end

  add_foreign_key "employees", "designations"
  add_foreign_key "leave_plans", "employees"
end
