class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string "username", :limit => 25
      t.string "email", :null => false
      t.string "password", :limit => 40
      t.timestamps
      t.timestamps
    end
  end
end
