class TickerAdminsController < ApplicationController
	layout 'tabbed'
	def list
		@data_tables = ActiveRecord::Base.connection.tables
		#@result= Product.find(1);
		@poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
	end
end
