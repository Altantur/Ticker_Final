class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categoryname = Category.find_by_name(params[:name]).name
    idd = Category.find_by_name(params[:name])
    posttemp = News.where(:id => CategoryNews.where(category_id:idd).pluck(:news_id))
    @posts = posttemp.paginate(page: params[:page], order: 'created_at DESC', per_page: 2)

    @temp = params[:name]

  end
end