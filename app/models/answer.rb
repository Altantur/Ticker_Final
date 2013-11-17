class Answer < ActiveRecord::Base
  attr_accessible :title, :body, :value, :result
  belongs_to :poll
end
