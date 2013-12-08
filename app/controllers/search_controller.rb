class SearchController < ApplicationController
  def index
  	#@posts=News.find(:all, :conditions => ['body LIKE ?', "%#{params[:q]}%"])

  	@posts = News.where('body LIKE ?', "%#{params[:q]}%")
  	@posts = @posts.paginate(page: params[:page], order: 'created_at DESC', per_page: 2)
  end
end
