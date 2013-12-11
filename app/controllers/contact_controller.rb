class ContactController < ApplicationController
	def new
		@message = Message.new
	end

	def create
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
