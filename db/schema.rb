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

ActiveRecord::Schema.define(version: 2018_12_15_074741) do

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "title"
    t.text "catch_copy"
    t.text "top_pictures"
    t.text "business_content"
    t.text "experience_content"
    t.text "request_content"
    t.text "application_requirement"
    t.string "country"
    t.string "city"
    t.string "period"
    t.string "days"
    t.string "time"
    t.text "allowance"
    t.text "company_introduction"
    t.text "company_introduction_picture"
    t.text "employees_number"
    t.text "language"
    t.text "manager_profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
