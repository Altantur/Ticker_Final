class Location < ActiveRecord::Base
	def display_name
     address
   end
  attr_accessible :address, :created_at, :updated_at, :product_id
  has_many :product_locations
end
