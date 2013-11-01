class CreateLocationProducts < ActiveRecord::Migration
  def change
    create_table :location_products do |t|
      t.float "price"
      t.string "address", :limit => 255
      t.timestamps
    end
  end
end
