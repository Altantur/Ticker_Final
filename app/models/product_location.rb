class ProductLocation < ActiveRecord::Base
  attr_accessible :location_id, :price
  belongs_to :location
  belongs_to :product
end
	