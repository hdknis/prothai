class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :user_name
      t.string :country
      t.string :industry
      t.string :user_status
      t.text :body
      t.timestamps
      t.datetime :created_at, default: -> { 'NOW()' }
      t.datetime :updated_at, default: -> { 'NOW()' }
    end
  end
end
