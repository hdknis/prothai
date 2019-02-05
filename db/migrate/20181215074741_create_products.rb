class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :c_title , null: false
      t.text :c_catch_copy , null: false
      t.string :c_name , null: false
      t.string :c_established_year , null: false
      t.string :c_employees_number , null: false
      t.string :c_country, null: false
      t.string :c_city
      t.string :c_employee_nationality_ratio , null: false
      t.integer :c_period , null: false
      t.string :c_time , null: false
      t.string :c_language_used_ratio , null: false
      t.text :c_salary , null: false
      t.text :c_business_content , null: false
      t.text :required_spec
      t.text :company_achievements
      t.text :ways_contact, null: false
      t.text :slider_photo1, null: false
      t.text :slider_photo2, null: false
      t.text :slider_photo3, null: false
      t.text :slider_photo4
      t.text :slider_photo5
      t.text :slider_photo6
      t.text :slider_photo7
      ## interview
      t.text :i_mission_life, null: false
      t.text :i_3wmake_company, null: false
      t.text :i_current_state, null: false
      t.text :i_gotover_point, null: false
      t.text :i_future_policies, null: false
      t.text :i_message_students, null: false
      t.text :i_recommended_books
      t.text :i_editor_word, null: false
      ## timestanps
      t.timestamps
    end
  end
end
