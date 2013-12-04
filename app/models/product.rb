class Product < ActiveRecord::Base
  attr_accessible :title, :body, :release_date, :name, :value
  has_many :product_categories
  has_many :ratings
  has_many :locations
  accepts_nested_attributes_for :locations, :allow_destroy => true
end
