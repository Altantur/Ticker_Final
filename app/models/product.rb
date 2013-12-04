class Product < ActiveRecord::Base
  attr_accessible :title, :body, :release_date, :name, :value
  belongs_to :admin 
  has_many :category_products
  has_many :ratings
  has_many :locations
end
