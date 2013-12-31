class ProductController < ApplicationController
  def index
  	@poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
  end

  def show
  	@poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
  end
end
