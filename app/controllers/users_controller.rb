class UsersController < ApplicationController
	def index
		@user = User.all
	end
	
	def new
		@user = User.new
	end	

	def create
		user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
		if user.save
			redirect_to new_session_path
		end
	end

	def show
		@user = User.find(session['user_id'])
	end

end
