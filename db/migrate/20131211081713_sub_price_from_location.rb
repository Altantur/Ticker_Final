class SubPriceFromLocation < ActiveRecord::Migration
  def up
 	remove_column :locations, :price 
  end

  def down
  	 add_column :locatons, :price, :float
  end
end
