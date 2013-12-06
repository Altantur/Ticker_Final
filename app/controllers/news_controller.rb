class NewsController < ApplicationController
	
	impressionist actions: [:show]
	#, unique: [:session_hash]

  def index
    @posts = News.paginate(page: params[:page], order: 'created_at DESC', per_page: 2)
  end

  def show
  	@newscategories = CategoryNews.where(news_id:params[:id]).pluck(:category_id)
  	@news = News.find(params[:id])
  	if @news.counter==nil
  		@news.counter=1
  	else
  		@news.counter+=1
  	end
  end
end
