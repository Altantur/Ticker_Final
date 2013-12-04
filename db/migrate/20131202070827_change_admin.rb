class ChangeAdmin < ActiveRecord::Migration
  def up
  	remove_column :admins, :password
  	add_column :admins, :salted_password, :string
  	add_column :admins, :hashed_password, :string
  end

  def down
  	remove_column :admins, :salted_password
  	remove_column :admins, :hashed_password
  end
end

