class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string "value", :limit => 100
      t.timestamps
    end
  end
end
