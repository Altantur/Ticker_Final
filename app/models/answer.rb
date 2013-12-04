class Answer < ActiveRecord::Base
  attr_accessible :value, :result, :poll_id
  belongs_to :poll
end
