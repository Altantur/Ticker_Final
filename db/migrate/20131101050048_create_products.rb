class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.references :admins
      t.string "name", :limit =>100
      t.date "release_date"
      t.float "value"
      t.timestamps
    end
    add_index :products, :admins_id
  end

  def self.down
  	drop_table :products
  end
end
