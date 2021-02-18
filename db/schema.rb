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

ActiveRecord::Schema.define(version: 2019_03_06_080915) do

  create_table "blogs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_name"
    t.string "country"
    t.string "industry"
    t.string "user_status"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "connect_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_connect_tags_on_product_id"
    t.index ["tag_id"], name: "index_connect_tags_on_tag_id"
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "feature"
    t.text "rent"
    t.text "food_expenses"
    t.text "ticket"
    t.text "types_of_visas"
    t.text "find_residence_info"
    t.text "community_info"
    t.text "detail_info"
    t.text "other"
    t.text "flag_pic"
    t.text "show_pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inquiries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "period", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.text "c_title", null: false
    t.text "c_catch_copy", null: false
    t.string "c_name", null: false
    t.string "c_established_year"
    t.text "c_employees_number", null: false
    t.string "c_country", null: false
    t.integer "country_id", null: false
    t.string "c_city"
    t.text "c_employee_nationality_ratio", null: false
    t.text "c_period_text"
    t.integer "period_id", null: false
    t.text "c_time", null: false
    t.text "c_language_used_ratio", null: false
    t.text "c_salary", null: false
    t.text "c_business_content", null: false
    t.text "required_spec"
    t.text "company_achievements"
    t.text "ways_contact", null: false
    t.text "slider_photo1"
    t.text "slider_photo2"
    t.text "slider_photo3"
    t.text "slider_photo4"
    t.text "slider_photo5"
    t.text "slider_photo6"
    t.text "slider_photo7"
    t.text "preprofile"
    t.text "title_i_mission_life"
    t.text "i_mission_life"
    t.text "title_i_3wmake_company"
    t.text "i_3wmake_company"
    t.text "title_i_current_state"
    t.text "i_current_state"
    t.text "title_i_gotover_point"
    t.text "i_gotover_point"
    t.text "title_i_future_policies"
    t.text "i_future_policies"
    t.text "title_i_message_students"
    t.text "i_message_students"
    t.text "title_i_recommended_books"
    t.text "i_recommended_books"
    t.text "title_i_editor_word"
    t.text "i_editor_word"
    t.string "recruitment_stop_flag"
    t.string "interviewed_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
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

  add_foreign_key "connect_tags", "products"
  add_foreign_key "connect_tags", "tags"
end
