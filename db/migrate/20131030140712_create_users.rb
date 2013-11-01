class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "firstName", :limit => 25
      t.string "lasName", :limit => 25
      t.string "email", :null => false
      t.string "password", :limit => 40
      t.timestamps
    end
  end
end
