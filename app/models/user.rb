class User < ActiveRecord::Base
	has_many :selected_pets
	has_many :pets, through: :selected_pets

	before_save { self.email = email.downcase }
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	#Check if the user is logged in. True = Logged in. False = Not Logged In/No Account
 #  def session
	# 	if cookies.signed[:session_id] = self.session_id
	# 		return true
	# 	else
	# 		return false
	# 	end
	# end


	validates :email, presence: true, length: { maximum: 255 },
						format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
	
	has_secure_password
	validates :password, presence: true, length: { maximum: 50 }, allow_nil: true

end 