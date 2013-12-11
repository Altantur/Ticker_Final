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

    @temp = ProductCategory.where("category_id = #{idd.id}")
    @pro = {}
    array = []
    @temp.each do |porcat|
       array << porcat.product_id
     end
     tt=""
      array.each do |i| tt+=i.to_s + ','
      end
      tt =tt[0,tt.length-1]
    sql = "select * from products where id IN (#{tt})"
    @pro = Product.find_by_sql(sql)
    
    #puts "FUCKFUCK"
    #tm = ProductCategory.where(category_id:idd.id)
    #@pro = Product.where(:id => tm)
    #puts "FUCKFUCK"

    @loc = Location.where("product_id = #{idd.id}") 
    
  end
end