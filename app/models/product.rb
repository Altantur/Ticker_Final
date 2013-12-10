class Product < ActiveRecord::Base
  attr_accessible :release_date, :name, :value
  attr_accessible :product_categories_attributes
  has_many :product_categories
  has_many :ratings
  has_many :locations
  accepts_nested_attributes_for :product_categories
  accepts_nested_attributes_for :locations, :allow_destroy => true
end
