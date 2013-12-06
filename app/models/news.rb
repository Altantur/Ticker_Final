class News < ActiveRecord::Base
	
	is_impressionable
  	attr_accessible :title, :body, :counter 
  	has_many :category_news
end
