class NewsController < ApplicationController
  def index
  	@newnews = News.all.sort_by &:created_at
  end

  def show
  	@news = News.find(params[:id])
  end
end
