class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		puts @user.session
	end

	# For registering to the site
	def new
    @user = User.new
  end

  def create
  	 @user = User.create(user_params)
  	 redirect_to users_path
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end