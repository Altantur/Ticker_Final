class SessionsController < ApplicationController
  def new
  end

=begin
	def create
	  auth_hash = request.env['omniauth.auth']
	  @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
	  if @authorization	  	
	    #already signed up
	    @sessionreturntext = "Welcome back #{auth_hash["info"]["name"]}. You have already signed up."
	  else
	  	#sign up for first time
	    user = User.new :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
	    user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
	    user.save
	    @sessionreturntext = "Hello #{user.name}! You've signed up using #{auth_hash["provider"]}."
	  end
	end
=end

	def create
	  auth_hash = request.env['omniauth.auth']
	 
	  if session[:user_id]
	    # Means our user is signed in. Add the authorization to the user
	    User.find(session[:user_id]).add_provider(auth_hash)
	    flash[:success]= "Already signed in. You can now login using #{auth_hash["provider"].capitalize} too!"
		redirect_to "/"
		

	  else
	    # Log him in or sign him up
	    auth = Authorization.find_or_create(auth_hash)
	    # Create the session
	    session[:user_id] = auth.user_id
	    temp=User.find(auth.user_id).name;
	    flash[:success]= "Welcome #{temp}"
		redirect_to "/"

	  end
	end

  	def failure
  		flash[:failure]= "Уучлаарай одоогоор дэмжигдээгүй байнa"
		redirect_to "/"
  	end

  	def destroy
	  	session[:user_id] = nil
	  	flash[:success]= "You've logged out"
		redirect_to "/"
  	end
end
