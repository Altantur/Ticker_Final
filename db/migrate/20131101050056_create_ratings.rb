class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string "result", :limit => 100
      t.timestamps
    end
  end
end
