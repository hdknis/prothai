class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :user_name
      t.string :country
      t.string :industry
      t.string :user_status
      t.text :body
      t.timestamps
    end
  end
end
