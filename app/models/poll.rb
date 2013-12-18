class Poll < ActiveRecord::Base
  attr_accessible :value
  has_many :answers
 	attr_accessible :answers_attributes
  	validates :value, presence: true
  	validates_associated :answers
  	accepts_nested_attributes_for :answers
end
