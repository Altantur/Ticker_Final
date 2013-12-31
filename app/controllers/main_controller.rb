class MainController < ApplicationController
  def home
  	@banner = Ads.last
  	@categories = Category.all
  	@poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
  end

  def about
  	@banner = Ads.last
  	@categories = Category.all
  	@poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
  end
end
