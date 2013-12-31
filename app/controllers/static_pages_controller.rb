class StaticPagesController < ApplicationController

def index

end

def show
	@page = StaticPage.find(params[:id])
	@poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
end	

def error
end	


end
