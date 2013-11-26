class News < ActiveRecord::Base
  attr_accessible :title, :body 
  belongs_to :admin
  has_many :category_news
end
