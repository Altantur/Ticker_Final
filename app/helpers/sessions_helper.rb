module SessionsHelper

  	def current_user
    	@current_user ||= User.find_by_remember_token(cookies[:remember_token])
  	end

  	def signed_in?
    	!!session[:user_id] #dont fuck with this
  	end

end
