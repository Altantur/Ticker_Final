class TickerAdminsController < ApplicationController
	layout 'tabbed'
	def list
		@data_tables = ActiveRecord::Base.connection.tables
		#@result= Product.find(1);
	end
end
