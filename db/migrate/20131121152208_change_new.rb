
class ChangeNew < ActiveRecord::Migration
  def up
  	add_column :news , :counter, :integer
  end

  def down
  	remove_column :news, :counter
  end
end


