class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :title
      t.text :catch_copy
      t.text :top_pictures
      t.text :business_content
      t.text :experience_content
      t.text :request_content
      t.text :application_requirement
      t.string :country
      t.string :city
      t.string :period
      t.string :days
      t.string :time
      t.text :allowance
      t.text :company_introduction
      t.text   :company_introduction_picture
      t.text :employees_number
      t.text :language
      t.text :manager_profile
      t.timestamps
    end
  end
end
