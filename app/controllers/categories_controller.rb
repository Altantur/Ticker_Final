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
        if array.size == 0 
        tt = '0'
end
    sql = "select * from products where id IN (#{tt})"
    @pro = Product.find_by_sql(sql)
    @poll = Poll.last
    @chararray = []
    @pro.each do |product|
        @chararray << product.name
    end

    @loca = Location.all

    @proloc = ProductLocation.all
    
    #@d = []
    #@proloc.each do |pl| 
    #@d << pl.to_s
    #end
=begin
    @hasher = []
    @loca.each do |locationer|
      @hasher << locationer.address
    end

    @pro.each do |une|
      tur = ProductLocation.where("product_id = ?", une.id)
      tur.each do |price|

      end
    end
=end
    sql1 = "SELECT p.name as name, l.address as address, pl.price as price
           FROM product_locations pl, products p, locations l
           WHERE pl.product_id = p.id AND pl.location_id = l.id AND pl.product_id IN (#{tt})"
   #@temp = ActiveRecord::Base.connection.execute(sql1)
   @temp = Product.find_by_sql(sql1)
    sql2 = "SELECT DISTINCT(l.address) as address 
           FROM product_locations pl, locations l
           WHERE pl.location_id = l.id"
   @locat = Location.find_by_sql(sql2)
    #sql1 =  " SELECT var.price, var.name FROM
     #         (SELECT p.name as name, l.address as address, pl.price as price
      #        FROM product_locations pl, products p, locations l
       #       WHERE pl.product_id = p.id AND pl.location_id = l.id)
        #      WHERE address df "


  end
end