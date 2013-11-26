class Authorization < ActiveRecord::Base
  	attr_accessible :provider, :uid, :user_id
  	belongs_to :user
  	validates :provider, :uid, :presence => true
	
	def self.find_or_create(auth_hash)
		auth = Authorization.find_by_provider_and_uid(auth_hash["provider"],auth_hash["uid"])
		puts "CHINTOGOTKH" #debug fuc
		puts auth_hash["provider"] + " " + auth_hash["uid"]
		puts "CHINTOGOTKH"
		unless auth
			user = User.create :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
			puts "CHINTOGOTKH"
	    	auth = Authorization.create :user_id => user.id, :provider => auth_hash["provider"], :uid => auth_hash["uid"]
	    	puts auth.user.name
	  	end
	  	return auth
	end

end