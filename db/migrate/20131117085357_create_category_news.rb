class CreateCategoryNews < ActiveRecord::Migration
  def self.up
    create_table :category_news do |t|
      t.references :news
      t.references :categories
      t.timestamps
    end
    add_index :category_news,[:news_id, :categories_id]
  end

  def self.down
  	drop_table :category_news
  end
end
