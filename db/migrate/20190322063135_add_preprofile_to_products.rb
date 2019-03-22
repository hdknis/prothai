class AddPreprofileToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :preprofile, :text
  end
end
