class StaticPage < ActiveRecord::Base
  attr_accessible :title, :content, :image_path
  mount_uploader :image_path, ImageUploader
end
