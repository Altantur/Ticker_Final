class SessionsController < ApplicationController
	def new
	end

	def create
	  auth_hash = request.env['omniauth.auth']
	 
	  if session[:user_id]
	    # Means our user is signed in. Add the authorization to the user
	    User.find(session[:user_id]).add_provider(auth_hash)
		redirect_to "/"
		

	  else
	    # Log him in or sign him up
	    auth = Authorization.find_or_create(auth_hash)
	    # Create the session
	    session[:user_id] = auth.user_id
	    temp=User.find(auth.user_id).name;
		redirect_to "/"
		@poll = Poll.last
    	@count = Answer.find_by_sql("select * from answers where poll_id = #{@poll.id}")
	  end
	end

		def failure
		redirect_to "/"
		end

		def destroy
	  	session[:user_id] = nil
		redirect_to "/"
		end
end
