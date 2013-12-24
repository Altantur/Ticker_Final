class MainController < ApplicationController
  def home
  	@banner = Ads.last
  	@categories = Category.all
  end

  def about
  	@banner = Ads.last
  	@categories = Category.all
  end
end
