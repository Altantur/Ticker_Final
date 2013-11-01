class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string "value", :limit => 100
      t.timestamps
    end
  end
end
