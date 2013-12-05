class SessionsController < ApplicationController
	def new
	end

	def create
	  auth_hash = request.env['omniauth.auth']
	 
	  if session[:user_id]
	    # Means our user is signed in. Add the authorization to the user
	    User.find(session[:user_id]).add_provider(auth_hash)
	    flash[:success]= "Та аль хэдийнээ нэвтэрсэн байна. #{auth_hash["provider"].capitalize}"
		redirect_to "/"
		

	  else
	    # Log him in or sign him up
	    auth = Authorization.find_or_create(auth_hash)
	    # Create the session
	    session[:user_id] = auth.user_id
	    temp=User.find(auth.user_id).name;
	    flash[:success]= "Амжилттай нэвтэрлээ, #{temp}"
		redirect_to "/"

	  end
	end

		def failure
			flash[:failure]= "Уучлаарай одоогоор дэмжигдээгүй байнa"
		redirect_to "/"
		end

		def destroy
	  	session[:user_id] = nil
	  	flash[:success]= "Гарлаа"
		redirect_to "/"
		end
end
