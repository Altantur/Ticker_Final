class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string "username", :limit => 25
      t.string "email", :null => false
      t.string "password", :limit => 40
      t.timestamps
      t.timestamps
    end
  end

  def self.down
  	drop_table :admins
  end
end