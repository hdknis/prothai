RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    # importを追加することにより、CSVインポートが可能となる
    import
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

   config.model 'Product' do
      LABEL_id = '記事ID'
      LABEL_c_catch_copy = 'キャッチコピー'
      LABEL_c_title = '記事タイトル'
      LABEL_c_name = '企業名'
      LABEL_c_established_year = '設立年'
      LABEL_c_employees_number = '社員数'
      LABEL_c_country = '国'
      LABEL_country_id = '国テーブルのid(国のテーブルからそれぞれの国のidを探してきて入力してください)'
      LABEL_c_city = '場所(都市)'
      LABEL_c_employee_nationality_ratio = '社員の国籍比率'
      LABEL_c_period_text = 'インターンシップ期間'
      LABEL_period_id = '期間テーブルのid(期間のテーブルからそれぞれの期間のidを探してきて入力してください)'
      LABEL_c_time = 'インターンシップ日数、時間'
      LABEL_c_language_used_ratio = '使用言語の割合'
      LABEL_c_salary = '給与'
      LABEL_c_business_content = '事業内容'
      LABEL_required_spec = '求めるスペック'
      LABEL_company_achievements = '制作物・実績URL、動画'
      LABEL_ways_contact = 'HP,会社のメールアドレス'
      LABEL_recruitment_stop_flag = '募集停止flag'
      LABEL_interviewed_name = 'インタビューした人の名前'
      LABEL_slider_photo1 = '写真１(この写真は企業検索ページのサムネイルになります)'
      LABEL_slider_photo2 = '写真2'
      LABEL_slider_photo3 = '写真3'
      LABEL_slider_photo4 = '写真4'
      LABEL_slider_photo5 = '写真5'
      LABEL_slider_photo6 = '写真6'
      LABEL_slider_photo7 = '写真7'
      LABEL_title_i_mission_life = '人生のミッション・目標 のタイトル'
      LABEL_i_mission_life = '人生のミッション・目標'
      LABEL_title_i_3wmake_company = 'いつ、きっかけ、どうしてのタイトル'
      LABEL_i_3wmake_company = 'いつ、きっかけ、どうして'
      LABEL_title_i_current_state = '現在の状況のタイトル'
      LABEL_i_current_state = '現在の状況'
      LABEL_title_i_gotover_point = '難しかった点、どうやって乗り越えたか、学んだ点のタイトル'
      LABEL_i_gotover_point = '難しかった点、どうやって乗り越えたか、学んだ点'
      LABEL_title_i_future_policies = '具体的な今後の方針（課題、打ち手、目標）のタイトル'
      LABEL_i_future_policies = '具体的な今後の方針（課題、打ち手、目標）'
      LABEL_title_i_message_students = '学生へメッセージのタイトル'
      LABEL_i_message_students = '学生へメッセージ'
      LABEL_title_i_recommended_books = '本おすすめのタイトル'
      LABEL_i_recommended_books = '本おすすめ'
      LABEL_title_i_editor_word = '編集者一言のタイトル'
      LABEL_i_editor_word = '編集者一言'
      LABEL_created_at = '作成日時'
      LABEL_updated_at = '更新日時'

      # ここに指定した項目が表示される。include_all_fieldsをすれば全て表示。
      list do
        field :id do
          label LABEL_id
        end
        field :c_catch_copy do label LABEL_c_catch_copy end
        field :c_title do label LABEL_c_title end
        field :c_name do label LABEL_c_name end
        field :c_established_year do label LABEL_c_established_year end
        field :c_employees_number do label LABEL_c_employees_number end
        field :c_country do label LABEL_c_country end
        field :country_id do label LABEL_country_id end
        field :c_city do label LABEL_c_city end
        field :c_employee_nationality_ratio do label LABEL_c_employee_nationality_ratio end
        field :c_period_text do label LABEL_c_period_text end
        field :period_id do label LABEL_period_id end
        field :c_time do label LABEL_c_time end
        field :c_language_used_ratio do label LABEL_c_language_used_ratio end
        field :c_salary do label LABEL_c_salary end
        field :c_business_content do label LABEL_c_business_content end
        field :required_spec do label LABEL_required_spec end
        field :company_achievements do label LABEL_company_achievements end
        field :ways_contact do label LABEL_ways_contact end
        field :recruitment_stop_flag do label LABEL_recruitment_stop_flag end
        field :interviewed_name do label LABEL_interviewed_name end
        field :slider_photo1, :carrierwave do label LABEL_slider_photo1 end
        field :slider_photo2, :carrierwave do label LABEL_slider_photo2 end
        field :slider_photo3, :carrierwave do label LABEL_slider_photo3 end
        field :slider_photo4, :carrierwave do label LABEL_slider_photo4 end
        field :slider_photo5, :carrierwave do label LABEL_slider_photo5 end
        field :slider_photo6, :carrierwave do label LABEL_slider_photo6 end
        field :slider_photo7, :carrierwave do label LABEL_slider_photo7 end
        field :title_i_mission_life do label LABEL_title_i_mission_life end
        field :i_mission_life do label LABEL_i_mission_life end
        field :title_i_3wmake_company do label LABEL_title_i_3wmake_company end
        field :i_3wmake_company do label LABEL_i_3wmake_company end
        field :title_i_current_state do label LABEL_title_i_current_state end
        field :i_current_state do label LABEL_i_current_state end
        field :title_i_gotover_point do label LABEL_title_i_gotover_point end
        field :i_gotover_point do label LABEL_i_gotover_point end
        field :title_i_future_policies do label LABEL_title_i_future_policies end
        field :i_future_policies do label LABEL_i_future_policies end
        field :title_i_message_students do label LABEL_title_i_message_students end
        field :i_message_students do label LABEL_i_message_students end
        field :title_i_recommended_books do label LABEL_title_i_recommended_books end
        field :i_recommended_books do label LABEL_i_recommended_books end
        field :title_i_editor_word do label LABEL_title_i_editor_word end
        field :i_editor_word do label LABEL_i_editor_word end
        field :created_at do
          label LABEL_created_at
        end
        field :updated_at do
          label LABEL_updated_at
        end
      end

      edit do
        field :c_catch_copy do label LABEL_c_catch_copy end
        field :c_title do label LABEL_c_title end
        field :c_name do label LABEL_c_name end
        field :c_established_year do label LABEL_c_established_year end
        field :c_employees_number do label LABEL_c_employees_number end
        field :c_country do label LABEL_c_country end
        field :country_id do label LABEL_country_id end
        field :c_city do label LABEL_c_city end
        field :c_employee_nationality_ratio do label LABEL_c_employee_nationality_ratio end
        field :c_period_text do label LABEL_c_period_text end
        field :period_id do label LABEL_period_id end
        field :c_time do label LABEL_c_time end
        field :c_language_used_ratio do label LABEL_c_language_used_ratio end
        field :c_salary do label LABEL_c_salary end
        field :c_business_content do label LABEL_c_business_content end
        field :required_spec do label LABEL_required_spec end
        field :company_achievements do label LABEL_company_achievements end
        field :ways_contact do label LABEL_ways_contact end
        field :recruitment_stop_flag do label LABEL_recruitment_stop_flag end
        field :interviewed_name do label LABEL_interviewed_name end
        field :slider_photo1, :carrierwave do label LABEL_slider_photo1 end
        field :slider_photo2, :carrierwave do label LABEL_slider_photo2 end
        field :slider_photo3, :carrierwave do label LABEL_slider_photo3 end
        field :slider_photo4, :carrierwave do label LABEL_slider_photo4 end
        field :slider_photo5, :carrierwave do label LABEL_slider_photo5 end
        field :slider_photo6, :carrierwave do label LABEL_slider_photo6 end
        field :slider_photo7, :carrierwave do label LABEL_slider_photo7 end
        field :title_i_mission_life do label LABEL_title_i_mission_life end
        field :i_mission_life do label LABEL_i_mission_life end
        field :title_i_3wmake_company do label LABEL_title_i_3wmake_company end
        field :i_3wmake_company do label LABEL_i_3wmake_company end
        field :title_i_current_state do label LABEL_title_i_current_state end
        field :i_current_state do label LABEL_i_current_state end
        field :title_i_gotover_point do label LABEL_title_i_gotover_point end
        field :i_gotover_point do label LABEL_i_gotover_point end
        field :title_i_future_policies do label LABEL_title_i_future_policies end
        field :i_future_policies do label LABEL_i_future_policies end
        field :title_i_message_students do label LABEL_title_i_message_students end
        field :i_message_students do label LABEL_i_message_students end
        field :title_i_recommended_books do label LABEL_title_i_recommended_books end
        field :i_recommended_books do label LABEL_i_recommended_books end
        field :title_i_editor_word do label LABEL_title_i_editor_word end
        field :i_editor_word do label LABEL_i_editor_word end
      end

       show do
        field :c_catch_copy do label LABEL_c_catch_copy end
        field :c_title do label LABEL_c_title end
        field :c_name do label LABEL_c_name end
        field :c_established_year do label LABEL_c_established_year end
        field :c_employees_number do label LABEL_c_employees_number end
        field :c_country do label LABEL_c_country end
        field :country_id do label LABEL_country_id end
        field :c_city do label LABEL_c_city end
        field :c_employee_nationality_ratio do label LABEL_c_employee_nationality_ratio end
        field :c_period_text do label LABEL_c_period_text end
        field :period_id do label LABEL_period_id end
        field :c_time do label LABEL_c_time end
        field :c_language_used_ratio do label LABEL_c_language_used_ratio end
        field :c_salary do label LABEL_c_salary end
        field :c_business_content do label LABEL_c_business_content end
        field :required_spec do label LABEL_required_spec end
        field :company_achievements do label LABEL_company_achievements end
        field :ways_contact do label LABEL_ways_contact end
        field :recruitment_stop_flag do label LABEL_recruitment_stop_flag end
        field :interviewed_name do label LABEL_interviewed_name end
        field :slider_photo1 do label LABEL_slider_photo1 end
        field :slider_photo2 do label LABEL_slider_photo2 end
        field :slider_photo3 do label LABEL_slider_photo3 end
        field :slider_photo4 do label LABEL_slider_photo4 end
        field :slider_photo5 do label LABEL_slider_photo5 end
        field :slider_photo6 do label LABEL_slider_photo6 end
        field :slider_photo7 do label LABEL_slider_photo7 end
        field :title_i_mission_life do label LABEL_title_i_mission_life end
        field :i_mission_life do label LABEL_i_mission_life end
        field :title_i_3wmake_company do label LABEL_title_i_3wmake_company end
        field :i_3wmake_company do label LABEL_i_3wmake_company end
        field :title_i_current_state do label LABEL_title_i_current_state end
        field :i_current_state do label LABEL_i_current_state end
        field :title_i_gotover_point do label LABEL_title_i_gotover_point end
        field :i_gotover_point do label LABEL_i_gotover_point end
        field :title_i_future_policies do label LABEL_title_i_future_policies end
        field :i_future_policies do label LABEL_i_future_policies end
        field :title_i_message_students do label LABEL_title_i_message_students end
        field :i_message_students do label LABEL_i_message_students end
        field :title_i_recommended_books do label LABEL_title_i_recommended_books end
        field :i_recommended_books do label LABEL_i_recommended_books end
        field :title_i_editor_word do label LABEL_title_i_editor_word end
        field :i_editor_word do label LABEL_i_editor_word end
      end
    end

  config.model 'Period' do
      LABEL_id = '期間ID'
      LABEL_period = '期間'
      LABEL_created_at = '作成日時'
      LABEL_updated_at = '更新日時'

      # ここに指定した項目が表示される。include_all_fieldsをすれば全て表示。
      list do
        field :id do
          label LABEL_id
        end
        include_fields :period do
          label LABEL_period
        end
        field :created_at do
          label LABEL_created_at
        end
        field :updated_at do
          label LABEL_updated_at
        end
      end

      edit do
        include_fields :period do
          label LABEL_period
        end
      end

      show do
        field :id do
          label LABEL_id
        end
        include_fields :period do
          label LABEL_period
        end
        field :created_at do
          label LABEL_created_at
        end
        field :updated_at do
          label LABEL_updated_at
        end
      end
    end

    config.model 'Country' do
      LABEL_id = '国ID'
      LABEL_name = '国の名前'
      LABEL_flag_pic = '国の写真'
      LABEL_feature = '国の特徴'
      LABEL_rent = '家賃'
      LABEL_food_expenses = '食費'
      LABEL_total = '合計'
      LABEL_ticket = '航空券'
      LABEL_types_of_visas = 'ピザの種類'
      LABEL_find_residence_info = '住居を探すときにおすすめなサイト'
      LABEL_community_info = '日本人コミュニティーの紹介'
      LABEL_youtuber_info = 'YOUTUBERの紹介'
      LABEL_detail_info = '詳細な情報が知りたい方へ'
      LABEL_other = 'その他'
      LABEL_about_movement = 'その他3'
      LABEL_cost_information = 'その他2'
      LABEL_created_at = '作成日時'
      LABEL_updated_at = '更新日時'

      # ここに指定した項目が表示される。include_all_fieldsをすれば全て表示。
      list do
        field :id do
          label LABEL_id
        end
        field :name do label LABEL_name end
        field :flag_pic, :carrierwave do label LABEL_flag_pic end
        field :feature do label LABEL_feature end
        field :rent do label LABEL_rent end
        field :food_expenses do label LABEL_food_expenses end
        field :total do label LABEL_total end
        field :ticket do label LABEL_ticket end
        field :types_of_visas do label LABEL_types_of_visas end
        field :find_residence_info do label LABEL_find_residence_info end
        field :community_info do label LABEL_community_info end
        field :youtuber_info do label LABEL_youtuber_info end
        field :detail_info do label LABEL_detail_info end
        field :other do label LABEL_other end
        field :about_movement do label LABEL_about_movement end
        field :cost_information do label LABEL_cost_information end
        field :created_at do
          label LABEL_created_at
        end
        field :updated_at do
          label LABEL_updated_at
        end
      end

      edit do
        field :name do label LABEL_name end
        field :flag_pic, :carrierwave do label LABEL_flag_pic end
        field :feature do label LABEL_feature end
        field :rent do label LABEL_rent end
        field :food_expenses do label LABEL_food_expenses end
        field :total do label LABEL_total end
        field :ticket do label LABEL_ticket end
        field :types_of_visas do label LABEL_types_of_visas end
        field :find_residence_info do label LABEL_find_residence_info end
        field :community_info do label LABEL_community_info end
        field :youtuber_info do label LABEL_youtuber_info end
        field :detail_info do label LABEL_detail_info end
        field :other do label LABEL_other end
        field :about_movement do label LABEL_about_movement end
        field :cost_information do label LABEL_cost_information end
      end

      show do
        field :id do
          label LABEL_id
        end
        field :name do label LABEL_name end
        field :flag_pic, :carrierwave do label LABEL_flag_pic end
        field :feature do label LABEL_feature end
        field :rent do label LABEL_rent end
        field :food_expenses do label LABEL_food_expenses end
        field :total do label LABEL_total end
        field :ticket do label LABEL_ticket end
        field :types_of_visas do label LABEL_types_of_visas end
        field :find_residence_info do label LABEL_find_residence_info end
        field :community_info do label LABEL_community_info end
        field :youtuber_info do label LABEL_youtuber_info end
        field :detail_info do label LABEL_detail_info end
        field :other do label LABEL_other end
        field :about_movement do label LABEL_about_movement end
        field :cost_information do label LABEL_cost_information end
        field :created_at do
          label LABEL_created_at
        end
        field :updated_at do
          label LABEL_updated_at
        end
      end
    end

   config.model 'ConnectTag' do
      LABEL_id = 'タグID'
      LABEL_product = '記事のID'
      LABEL_tag = 'タグの名前'
      LABEL_created_at = '作成日時'
      LABEL_updated_at = '更新日時'

      # ここに指定した項目が表示される。include_all_fieldsをすれば全て表示。
      list do
        field :id do
          label LABEL_id
        end
        fields :product do
          label LABEL_product
        end
        fields :tag do
          label LABEL_tag
        end
        field :created_at do
          label LABEL_created_at
        end
        field :updated_at do
          label LABEL_updated_at
        end
      end

      edit do
        fields :product do
          label LABEL_product
        end
        fields :tag do
          label LABEL_tag
        end
      end

      show do
        field :id do
          label LABEL_id
        end
        fields :product do
          label LABEL_product
        end
        fields :tag do
          label LABEL_tag
        end
        field :created_at do
          label LABEL_created_at
        end
        field :updated_at do
          label LABEL_updated_at
        end
      end
    end







end
