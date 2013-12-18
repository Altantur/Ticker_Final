class AddImageToStaticPages < ActiveRecord::Migration
  def change
    add_column :static_pages, :image_path, :string
  end
end
