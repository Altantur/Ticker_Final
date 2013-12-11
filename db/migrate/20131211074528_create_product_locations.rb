class CreateProductLocations < ActiveRecord::Migration
  def change
    create_table :product_locations do |t|
      t.integer :product_id
      t.integer	:location_id
      t.float :price
      t.timestamps
    end
    add_index :product_locations, [:product_id, :location_id]
  
  end
end
