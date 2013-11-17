class CategoryNews < ActiveRecord::Base
 attr_accessible :title, :body
 belongs_to :news
 belongs_to :category
end
