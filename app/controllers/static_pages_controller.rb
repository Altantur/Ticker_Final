class StaticPagesController < ApplicationController

def index

end

def show
	@page = StaticPage.find(params[:id])
end	

def error
end	


end
