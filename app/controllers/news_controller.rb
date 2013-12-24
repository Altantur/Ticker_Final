class NewsController < ApplicationController
	
	impressionist actions: [:show]
	#, unique: [:session_hash]

  def index
    @posts = News.paginate(page: params[:page], order: 'created_at DESC', per_page: 2)
    @banner = Ads.last
  end

  def show
    @categories = Category.all
    @newscategories = CategoryNews.where(news_id:params[:id]).pluck(:category_id)
    @news = News.find(params[:id])
    @banner = Ads.last
  end
end
