class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string "name", :limit =>100
      t.date "release_date"
      t.timestamps
    end
  end
end
