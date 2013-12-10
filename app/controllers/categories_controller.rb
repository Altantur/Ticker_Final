class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @categoryname = Category.find_by_name(params[:name]).name
    idd = Category.find_by_name(params[:name])
    posttemp = News.where(:id => CategoryNews.where(category_id:idd).pluck(:news_id))
    @posts = posttemp.paginate(page: params[:page], order: 'created_at DESC', per_page: 2)

    @temp = idd

    @loc = Location.where("product_id = #{@temp.id}")
    

  end
end