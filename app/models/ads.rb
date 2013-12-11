class Ads < ActiveRecord::Base
  attr_accessible :value, :image_path
  mount_uploader :image_path, ImageUploader
end
