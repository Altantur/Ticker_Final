class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.references :products
      t.references :users
      t.timestamps
    end
    add_index :ratings, [:products_id, :users_id]
  end

  def self.down
  	drop_table :ratings
  end
end
