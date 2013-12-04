class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :category_news
  has_many :product_categories
end