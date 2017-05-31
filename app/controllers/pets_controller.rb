class PetsController < ApplicationController
	before_action :logged_in_user, only: [:like, :dislike]

	def index
		# In the future, we can try to paginate pages with many results with .paginate
		@pets = Pet.all
	end

	def show
		@pet = Pet.find(params[:id])
	end

	def like
			@pet = Pet.find(params[:id])
			spet = SelectedPet.new
			spet.pet_id = @pet.id
			spet.user_id = current_user.id
			spet.save
			@pet.is_liked = true
			redirect_to pets_path
	end

	# Feature to add in the future
	# def dislike
	# 	@pet = Pet.find(params[:id])
	# 	@pet.is_liked = false
	# 	redirect_to pets_path
	# end

	private

	def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
 
end
