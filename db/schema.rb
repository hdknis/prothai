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

ActiveRecord::Schema.define(version: 2019_02_02_075141) do

  create_table "blogs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_name"
    t.string "country"
    t.string "industry"
    t.string "user_status"
    t.text "body"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "inquiries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "c_title", null: false
    t.text "c_catch_copy", null: false
    t.string "c_name", null: false
    t.string "c_established_year", null: false
    t.string "c_employees_number", null: false
    t.string "c_country", null: false
    t.string "c_city"
    t.string "c_employee_nationality_ratio", null: false
    t.integer "c_period", null: false
    t.string "c_time", null: false
    t.string "c_language_used_ratio", null: false
    t.text "c_salary", null: false
    t.text "c_business_content", null: false
    t.text "required_spec"
    t.text "company_achievements"
    t.text "ways_contact", null: false
    t.text "slider_photo1", null: false
    t.text "slider_photo2", null: false
    t.text "slider_photo3", null: false
    t.text "slider_photo4"
    t.text "slider_photo5"
    t.text "slider_photo6"
    t.text "slider_photo7"
    t.text "i_mission_life", null: false
    t.text "i_3wmake_company", null: false
    t.text "i_current_state", null: false
    t.text "i_gotover_point", null: false
    t.text "i_future_policies", null: false
    t.text "i_message_students", null: false
    t.text "i_recommended_books"
    t.text "i_editor_word", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin_flg"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
