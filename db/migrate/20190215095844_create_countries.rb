class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name , null: false
      t.text :feature
      t.text :rent
      t.text :food_expenses
      t.text :ticket
      t.text :types_of_visas
      t.text :find_residence_info
      t.text :community_info
      t.text :detail_info
      t.text :other
      t.text :flag_pic
      t.text :show_pic
      t.timestamps
    end
  end
end
