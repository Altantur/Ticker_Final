class FixHasManyProblemOnAa < ActiveRecord::Migration
  def up
	remove_column :answers, :polls_id
	add_column :answers, :poll_id, :integer
	add_index :answers, :poll_id

	remove_column :category_news,  :categories_id
	add_column :category_news, :category_id, :integer
	add_index :category_news, :category_id	
	
    remove_column :locations, :products_id
    add_column :locations, :product_id, :integer
    add_index :locations, :product_id

    remove_column :product_categories, [:products_id, :categories_id]
    add_column :product_categories, :product_id, :integer
	add_column :product_categories, :category_id, :integer
    add_index :product_categories, [:product_id, :category_id]

	remove_column :ratings, :products_id
    add_column :ratings, :product_id, :integer
    add_index :ratings, :product_id
 end

  def down
	remove_column :answers, :poll_id
	add_column :answers, :polls_id, :integer
	add_index :answers, :polls_id

	remove_column :category_news, :category_id
	add_column :category_news, :categories_id, :integer
	add_index :category_news, :categories_id	
	
    remove_column :locations, :product_id
    add_column :locations, :products_id, :integer
    add_index :locations, :products_id

    remove_column :product_categories, [:product_id, :category_id]
    add_column :product_categories, :products_id, :integer
	add_column :product_categories, :categories_id, :integer
    add_index :product_categories, [:products_id, :categories_id]

	remove_column :ratings, :product_id
    add_column :ratings, :products_id, :integer
    add_index :ratings, :products_id

  end
end
