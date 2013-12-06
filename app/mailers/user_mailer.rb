class UserMailer < ActionMailer::Base
  def contact_mail(message,user)
  	@message = message
  	@user = user
  	mail(to: "bchintogtokh@gmail.com",
  		 from: "noreply",
         body: "From: #{message.email}<br />#{message.body}",
         content_type: "text/html",
         subject: "Tngri.com Subject: #{message.subject}")
  end

end
