class Pet < ActiveRecord::Base
	has_many :selected_pets
	has_many :users, through: :selected_pets

	def self.save_api_data
		response = HTTParty.get("http://api.petfinder.com/pet.find?key=de3a491efaa6c0d4ca431ff6d4be4f52&location=33125&format=json")
		pet_data = JSON.parse(response.body)

		pet = pet_data["petfinder"]["pets"]["pet"]

		pet.each do |pet_hash|
    # Pet is an array of hashes
    # for Ex. pet_name = pet_hash["name"]["$t"]
    	u = Pet.new

    	# Pet name
    	name = pet_hash["name"]["$t"]
    	u.name = name

    	# Pet age
			age = pet_hash["age"]["$t"]
			u.age = age
		
			# Pet sex
			sex = pet_hash["sex"]["$t"]
			u.sex = sex

			# Pet size
			size = pet_hash["size"]["$t"]
			u.size = size

			# Pet city
			city = pet_hash["contact"]["city"]["$t"]
			u.city = city

			# Pet zip
			zip = pet_hash["contact"]["zip"]["$t"]
			u.zip = zip

			# Pet address
			address1 = pet_hash["contact"]["address1"]["$t"]
			u.address1 = address1

			# Pet address 2
			address2 = pet_hash["contact"]["address2"]["$t"]
			u.address2 = address2

			# Pet phone
			phone = pet_hash["contact"]["phone"]["$t"]
			u.phone = phone

			# Pet mix
			mix = pet_hash["mix"]["$t"]
			u.mix = mix

			# Pet description
			description = pet_hash["description"]["$t"]
			u.description = description

			# Pet email
			email = pet_hash["contact"]["email"]["$t"]
			u.email = email 	

			# Pet animal
			animal = pet_hash["animal"]["$t"]
			u.animal = animal

			# Pet breed
			unless pet_hash["breeds"]["breed"] == nil
				if pet_hash["breeds"]["breed"].class == Hash
					breed = pet_hash["breeds"]["breed"]["$t"]
					u.breed = breed
				else
					breed = pet_hash["breeds"]["breed"][0]["$t"]
					u.breed = breed
				end
			end

			# Pet photo
			unless pet_hash["media"]["photos"] == nil
				# This will confirm if a photo exists. If it exists, the image link will save. 
				unless pet_hash["media"]["photos"]["photo"][2] == nil
					photo = pet_hash["media"]["photos"]["photo"][2]["$t"]
					u.photo = photo
				end
			end

			u.save
		end

		return 1
	end

end
