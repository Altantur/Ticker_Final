class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  	#Category.find(params[:id]).name
  	@pages = Array.new
  	pageslist = CategoryNews.where(category_id:params[:id]).pluck(:news_id)
    @categoryname = String.new

  	if pageslist.length!=0 then
      @categoryname = Category.find(params[:id]).name
  		pageslist.each do |x|
	  		@pages.push(News.find(x))
  		end
      @pages = @pages.sort_by &:created_at
      @pages = @pages.reverse
  	else
      @categoryname = ""
  		@pages = 0
  	end


  end
end