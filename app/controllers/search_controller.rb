class SearchController < ApplicationController
  def index
  	require 'will_paginate/array'
  	posts1 = News.where('body LIKE ? or title LIKE ?', "%#{params[:q]}%", "%#{params[:q]}%")

  	if Category.where('name LIKE ?',"%#{params[:q]}%").length != 0
    	idd = Category.where('name LIKE ?',"%#{params[:q]}%")
    	posttemp = News.where(:id => CategoryNews.where(category_id:idd).pluck(:news_id))
    	a = posttemp.union(posts1)
    	sql = a.to_sql
    	sql = sql[1,sql.length-2]
		@posts = News.find_by_sql(sql)
    else
    	@posts = posts1
    end
  	@posts = @posts.paginate(page: params[:page], order: 'created_at DESC', per_page: 2)
  end
end