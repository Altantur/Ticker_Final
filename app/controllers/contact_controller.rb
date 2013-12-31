class ContactController < ApplicationController
	def new
		@banner = Ads.last
		@message = Message.new
		@poll = Poll.last
    @count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
	end

	def create
		@banner = Ads.last
		@message = Message.new(params[:message])
		@poll = Poll.last
    	@count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
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
