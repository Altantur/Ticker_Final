class Admin < ActiveRecord::Base
  attr_accessible :username, :email, :password 
  has_many :news
  has_many :products
  has_many :polls
  has_many :ads
end
