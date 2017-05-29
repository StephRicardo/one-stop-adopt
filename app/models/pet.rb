class Pet < ActiveRecord::Base
	has_many :selected_pets
	has_many :users, through: :selected_pets

	def self.save_api_data
		response = HTTParty.get("http://api.petfinder.com/pet.get?key=de3a491efaa6c0d4ca431ff6d4be4f52&id=38136419&output=full&format=json")
		pet_data = JSON.parse(response.body)
		p pet_data["petfinder"]["pet"]["contact"]["phone"]["$t"]
		p pet_data["petfinder"]["pet"]["contact"]["state"]["$t"]
		p pet_data["petfinder"]["pet"]["contact"]["email"]["$t"]
		p pet_data["petfinder"]["pet"]["contact"]["city"]["$t"]
		p pet_data["petfinder"]["pet"]["contact"]["zip"]["$t"]
		p pet_data["petfinder"]["pet"]["contact"]["address1"]["$t"]
		p pet_data["petfinder"]["pet"]["age"]["$t"]
		p pet_data["petfinder"]["pet"]["size"]["$t"]
		p pet_data["petfinder"]["pet"]["name"]["$t"]
		p pet_data["petfinder"]["pet"]["sex"]["$t"]
		p pet_data["petfinder"]["pet"]["description"]
		p pet_data["petfinder"]["pet"]["mix"]["$t"]
		p pet_data["petfinder"]["pet"]["animal"]["$t"]
		p pet_data["petfinder"]["pet"]["media"]["photos"]["photo"][2]["$t"]
		# pet_data["petfinder"]["pet"]["contact"]["address2"]["$t"]
		# @pets = pet_data.map do |line|
		# 	p line
		# end
	end

end
