class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name , null: false
      t.text :feature
      t.text :rent
      t.text :food_expenses
      t.text :total
      t.text :ticket
      t.text :types_of_visas
      t.text :find_residence_info
      t.text :community_info
      t.text :youtuber_info
      t.text :detail_info
      t.text :about_movement
      t.text :cost_information
      t.text :flag_pic
      t.timestamps
    end
  end
end
