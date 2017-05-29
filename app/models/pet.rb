class Pet < ActiveRecord::Base
	has_many :selected_pets
	has_many :users, through: :selected_pets

	def self.save_api_data
		response = HTTParty.get("http://api.petfinder.com/pet.find?key=de3a491efaa6c0d4ca431ff6d4be4f52&location=33125&format=json")
		pet_data = JSON.parse(response.body)
		p pet_data.class
		p pet_data["petfinder"]["pets"]["pet"][0]
		# @pets = pet_data.map do |line|
		# 	p line
		# end
	end

end
