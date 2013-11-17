class User < ActiveRecord::Base
  attr_accessible :title, :body, :firstname, :lastname, :email, :password
  has_many :ratings
end
