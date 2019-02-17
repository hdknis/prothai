class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name , null: false
      t.text :cost_information
      t.text :flag_pic
      t.timestamps
    end
  end
end
