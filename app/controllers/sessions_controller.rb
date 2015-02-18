class SessionsController < ApplicationController
  def new
  	@user = User.new
    if params[:user_created] == 'true'
      @user_created_message = 'User successfully created!'
    end
  end

  def create
  	
  	#find the user by email
  	u = User.where(email: params[:user][:email]).first
  	if u != nil && u.authenticate(params[:user][:password])
  		session["user_id"] = u.id.to_s
  		redirect_to users_path
  	end	
  end

  def destroy
  	session.destroy
    redirect_to new_session_path
  end
end
