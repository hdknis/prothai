class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products, options: 'ROW_FORMAT=DYNAMIC' do |t|
      t.text :c_title , null: false
      t.text :c_catch_copy , null: false
      t.string :c_name , null: false
      t.string :c_established_year
      t.text :c_employees_number , null: false

      ##country
      t.string :c_country, null: false
      t.integer :country_id , null: false

      t.string :c_city
      t.text :c_employee_nationality_ratio , null: false

      ##period
      t.text :c_period_text
      t.integer :period_id , null: false

      t.text :c_time , null: false
      t.text :c_language_used_ratio , null: false
      t.text :c_salary , null: false
      t.text :c_business_content , null: false
      t.text :required_spec
      t.text :company_achievements
      t.text :ways_contact, null: false
      t.text :slider_photo1
      t.text :slider_photo2
      t.text :slider_photo3
      t.text :slider_photo4
      t.text :slider_photo5
      t.text :slider_photo6
      t.text :slider_photo7

      ## interview
      t.text :preprofile
      ##人生のミッション
      t.text :title_i_mission_life
      t.text :i_mission_life

      ##いつ、きっかけ、どうして
      t.text :title_i_3wmake_company
      t.text :i_3wmake_company

      ##現在の状態
      t.text :title_i_current_state
      t.text :i_current_state

      ##乗り越えた理由
      t.text :title_i_gotover_point
      t.text :i_gotover_point

      ##具体的な今後の方針
      t.text :title_i_future_policies
      t.text :i_future_policies

      ##学生へのメッセージ
      t.text :title_i_message_students
      t.text :i_message_students

      ##本のおすすめ
      t.text :title_i_recommended_books
      t.text :i_recommended_books

      ##編集者の一言
      t.text :title_i_editor_word
      t.text :i_editor_word

      ##other
      t.string :recruitment_stop_flag
      t.string :interviewed_name
      ## timestanps
      t.timestamps
    end
  end
end
