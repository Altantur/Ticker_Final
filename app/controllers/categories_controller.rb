class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
  	#Category.find(params[:id]).name
    
    @categories = Category.all
  	@pages = Array.new
    idd = Category.find_by_name(params[:name])
    puts idd
  	pageslist = CategoryNews.where(category_id:idd).pluck(:news_id)
    @categoryname = String.new

  	unless pageslist.length == 0 then
      
      @categoryname = Category.find_by_name(params[:name]).name
  		pageslist.each do |x|
	  		@pages.push(News.find(x))
  		end
      @pages = @pages.sort_by &:created_at
      @pages = @pages.reverse
  	else
      @categoryname = ""
  		@pages = 0
  	end
    @temp = params[:name]
  end
end