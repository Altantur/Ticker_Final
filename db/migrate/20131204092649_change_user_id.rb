class ChangeUserId < ActiveRecord::Migration
  def up
	remove_column :ratings, :users_id
	add_column :ratings, :user_id, :integer
	add_index :ratings, :user_id
  end

  def down
	remove_column :ratings, :user_id
	add_column :ratings, :users_id, :integers
	add_index :ratings, :users_id
  end
end
