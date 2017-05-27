class User < ActiveRecord::Base
	#Check if the user is logged in. True = Logged in. False = Not Logged In/No Account
	def session
		if cookies.signed[:session_id] = self.session_id
			return true
		else
			return false
		end
	end
	
end 