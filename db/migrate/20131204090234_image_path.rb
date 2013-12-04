class ImagePath < ActiveRecord::Migration
  def up
	add_column :ads, :image_path, :string
	add_column :news, :image_path, :string
	add_column :products, :image_path, :string
  end

  def down
	remove_column :ads, :image_path
	remove_column :news, :image_path
	remove_column :products, :image_path
  end
end
