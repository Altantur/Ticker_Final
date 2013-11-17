class Ads < ActiveRecord::Base
  attr_accessible :title, :body, :value
  belongs_to :admin
end
