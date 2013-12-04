class Location < ActiveRecord::Base
  attr_accessible :price, :address, :created_at, :updated_at, :product_id
  belongs_to :product
end
