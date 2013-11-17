class CreatePolls < ActiveRecord::Migration
  def self.up
    create_table :polls do |t|
      t.references :admins
      t.string "value", :limit => 100
      t.timestamps
    end
    add_index :polls, :admins_id
  end

  def self.down
  	drop_table :polls
  end
end
