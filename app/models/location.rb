class Location < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :product, :address, :price
end
