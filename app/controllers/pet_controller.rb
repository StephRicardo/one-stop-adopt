class PetsController < ApplicationController
	def index
		# In the future, we can try to paginate pages with many results with .paginate
		@pets = Pet.all
	end

	def show
		@pet = Pet.find(params[:id])
		# if @pet
		# 	redirect to(@pet)
		# else
		# 	render "@pets"
		# end
	end
 
end
