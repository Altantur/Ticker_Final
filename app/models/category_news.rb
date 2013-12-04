class CategoryNews < ActiveRecord::Base
	attr_accessible :news_id, :categories_id
	belongs_to :news
	belongs_to :category
end