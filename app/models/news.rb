class News < ActiveRecord::Base
	is_impressionable
  	attr_accessible :title, :body, :counter , :image_path
  	attr_accessible :category_news_attributes
  	validates :title, presence: true
  	validates :body, presence: true
  	has_many :category_news
  	validates_associated :category_news
  	accepts_nested_attributes_for :category_news
  	mount_uploader :image_path, ImageUploader
end
