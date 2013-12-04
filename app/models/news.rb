class News < ActiveRecord::Base
  attr_accessible :title, :body, :counter 
  has_many :category_news
end
