class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.string :period, null: false
      t.timestamps
    end
  end
end
