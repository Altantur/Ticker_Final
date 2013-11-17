class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.references :admins
      t.string "value", :limit => 100
      t.timestamps
    end
    add_index :ads, :admins_id
  end

  def self.down
  	drop_table :ads
  end
end
