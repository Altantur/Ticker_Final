class CreateProductCategories < ActiveRecord::Migration
  def self.up
    create_table :product_categories do |t|
      t.references :products
      t.references :categories
      t.timestamps
    end
    add_index :product_categories, [:products_id, :categories_id]
  end

  def self.down
  	drop_table :product_categories
  end
end
