class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :director
      t.text   :image_url
      t.integer :page
      t.timestamps
    end
  end
end
