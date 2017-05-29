class Pet < ApplicationRecord
	has_many :selected_pets
	has_many :users, through: :selected_pets

end
