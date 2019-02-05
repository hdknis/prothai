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

  config.model 'Product' do
    edit do
      field :c_title
      field :c_catch_copy
      field :c_name
      field :c_established_year
      field :c_employees_number
      field :c_country
      field :c_city
      field :c_employee_nationality_ratio
      field :c_period
      field :c_time
      field :c_language_used_ratio
      field :c_salary
      field :c_business_content
      field :required_spec
      field :company_achievements
      field :ways_contact
      field :slider_photo1, :carrierwave
      field :slider_photo2, :carrierwave
      field :slider_photo3, :carrierwave
      field :slider_photo4, :carrierwave
      field :slider_photo5, :carrierwave
      field :slider_photo6, :carrierwave
      field :slider_photo7, :carrierwave
      field :i_mission_life
      field :i_3wmake_company
      field :i_current_state
      field :i_gotover_point
      field :i_future_policies
      field :i_message_students
      field :i_recommended_books
      field :i_editor_word
    end
  end

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
end
