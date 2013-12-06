class NewsController < ApplicationController
  def index
  	@newnews = News.all.sort_by &:created_at
  	@newnews = @newnews.reverse
  	@categories = Category.all
  end

  def show
  	@categories = Category.all
  	@newscategories = CategoryNews.where(news_id:params[:id]).pluck(:category_id)
  	@news = News.find(params[:id])
  end
end
