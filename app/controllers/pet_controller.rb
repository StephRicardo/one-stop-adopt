class PetController < ApplicationController
	def index
		Pet.save_api_data
		@pets = Pet.paginate(page: params[:page])
	end

	def show
	end
 
end
