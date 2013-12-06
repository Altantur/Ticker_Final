class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categoryname = Category.find(params[:id]).name
    posttemp = News.where(:id => CategoryNews.where(category_id:params[:id]).pluck(:news_id))
    @posts = posttemp.paginate(page: params[:page], order: 'created_at DESC', per_page: 2)
  end
end