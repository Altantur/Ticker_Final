class DropAdmin < ActiveRecord::Migration
  def up
  	drop_table :admins
  	remove_column :polls, :admins_id
  	remove_column :products, :admins_id
  	remove_column :ads, :admins_id
  	remove_column :news, :admins_id
  end

  def down
  end
end
