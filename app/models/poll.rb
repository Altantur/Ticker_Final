class Poll < ActiveRecord::Base
  attr_accessible :value
  has_many :answers
end
