class Product < ActiveRecord::Base
  attr_accessible :product_categories_attributes, :product_locations_attributes
  attr_accessible :title, :body, :release_date, :name, :value, :image_path
  has_many :product_categories
  has_many :ratings
  has_many :product_locations
  accepts_nested_attributes_for :product_categories
  accepts_nested_attributes_for :product_locations, :allow_destroy => true
  mount_uploader :image_path, ImageUploader

  	validates :name, presence: true
  	validates :value, presence: true
  	validates :image_path, presence: true
  	validates_associated :product_locations
  	accepts_nested_attributes_for :product_locations

end
