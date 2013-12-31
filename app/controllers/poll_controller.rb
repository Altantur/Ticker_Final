class PollController < ApplicationController
  def index
  	@banner = Ads.last
    @poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
  end

  def show
  	@banner = Ads.last
    @poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
  end

  def give
    @poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
    @categories = Category.all
    @banner = Ads.last
  end
end
