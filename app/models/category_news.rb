class CategoryNews < ActiveRecord::Base
 	attr_accessible :news_id, :category_id
 	belongs_to :news
 	belongs_to :category
 	validates :category_id, presence:true
end
