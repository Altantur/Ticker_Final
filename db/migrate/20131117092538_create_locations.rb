class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.references :products
      t.string "address", :limit => 250
      t.float "price"
      t.timestamps
    end
    add_index :locations, :products_id
  end
  def self.down
  	drop_table :locations
  end
end
