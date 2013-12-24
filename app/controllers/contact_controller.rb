class ContactController < ApplicationController
	def new
		@banner = Ads.last
		@message = Message.new
	end

	def create
		@banner = Ads.last
		@message = Message.new(params[:message])

		if @message.valid?
      		UserMailer.contact_mail(@message,@user).deliver
      		flash[:success]= "Mail sent."
      		redirect_to(root_path)
    	else
      		flash[:danger] = "Please fill out everything."
      		redirect_to "/contact"
    	end
	end
end
