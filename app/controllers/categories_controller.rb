class CategoriesController < ApplicationController
  def index
  end

  def show
  	#Category.find(params[:id]).name
  	@pages = Array.new
  	pageslist = CategoryNews.where(categories_id:params[:id]).pluck(:news_id)

  	if pageslist.length!=0 then
  		pageslist.each do |x|
	  		@pages.push(News.find(x))
  		end
      @pages = @pages.sort_by &:created_at
      @pages = @pages.reverse
  	else
  		@pages = 0
  	end


  end
end