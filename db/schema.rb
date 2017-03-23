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

ActiveRecord::Schema.define(version: 20170322201830) do

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.date     "birth_date"
    t.integer  "pform_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_emergs", force: :cascade do |t|
    t.string   "name"
    t.string   "relate"
    t.string   "addr"
    t.string   "contact_no"
    t.string   "email_add"
    t.integer  "pform_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.text     "conv_topic"
    t.datetime "post_date"
    t.boolean  "conv_status"
    t.integer  "student_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "councilors", force: :cascade do |t|
    t.string   "fname"
    t.string   "mi"
    t.string   "lname"
    t.string   "department"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educ_infos", force: :cascade do |t|
    t.integer  "level"
    t.integer  "yr_grad"
    t.string   "school_addr"
    t.text     "recogawards"
    t.string   "educ_type"
    t.integer  "pform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "other_infos", force: :cascade do |t|
    t.text     "n_condition"
    t.text     "condition_temp"
    t.string   "langugage"
    t.string   "long_guard"
    t.integer  "pform_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "parent_infos", force: :cascade do |t|
    t.string   "name"
    t.string   "relate"
    t.date     "birth_date"
    t.integer  "age"
    t.string   "religion"
    t.string   "nationality"
    t.string   "present_add"
    t.string   "contact_no"
    t.string   "educ_attain"
    t.string   "occp"
    t.string   "emp_name"
    t.string   "emp_addr"
    t.string   "freqInteract"
    t.string   "civil_stat"
    t.integer  "pform_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pforms", force: :cascade do |t|
    t.string   "fname"
    t.string   "mi"
    t.string   "lname"
    t.string   "coursemajor"
    t.integer  "student_id"
    t.string   "year_level"
    t.string   "photoloc"
    t.string   "perm_address"
    t.string   "pres_address"
    t.string   "contact_no"
    t.string   "email"
    t.date     "birth_date"
    t.integer  "age"
    t.string   "sex"
    t.string   "p_of_birth"
    t.string   "nationality"
    t.string   "civil_stat"
    t.string   "admis_type"
    t.string   "emp_name"
    t.string   "emp_addr"
    t.string   "emp_cont_no"
    t.integer  "yr_w_emp"
    t.string   "faveplace"
    t.string   "curr_work"
    t.string   "posHeld"
    t.string   "reason4AdNU"
    t.string   "whoDecide"
    t.string   "hobbies"
    t.string   "dateAcccom"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "replies", force: :cascade do |t|
    t.text     "reply_message"
    t.integer  "conv_id"
    t.integer  "councilor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "siblings", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "civil_stat"
    t.string   "schooloremp"
    t.string   "yrlvloroccp"
    t.integer  "pform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "spouses", force: :cascade do |t|
    t.string   "name"
    t.string   "occp"
    t.integer  "yrs_married"
    t.string   "emp_name"
    t.string   "emp_addr"
    t.string   "emp_con_no"
    t.integer  "pform_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "fname"
    t.string   "mi"
    t.string   "lname"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
