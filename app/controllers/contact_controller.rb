class ContactController < ApplicationController
	def new
		@message = Message.new
		#if signed_in? then @user = User.find(session[:user_id])	end
	end

	def create
		@message = Message.new(params[:message])
		@user = User.find(session[:user_id])

		if @message.valid?
      		UserMailer.contact_mail(@message,@user).deliver
      		flash[:success]= "Мэйлийг амжилттай илгээлээ."
      		redirect_to(root_path)
    	else
      		flash[:danger] = "Бүх талбарыг бөглөнө үү. Агуулгын хэсэг нь 100-гаас олон тэмдэгттэй байна."
      		redirect_to "/contact"
    	end
	end
end
