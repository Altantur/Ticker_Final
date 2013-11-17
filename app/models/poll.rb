class Poll < ActiveRecord::Base
  attr_accessible :title, :body, :value
  has_many :answers
  belongs_to :admin
end
