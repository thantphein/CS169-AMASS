class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_username(params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to root_path
		else
			flash.now[:error] = 'Invalid username/password combination'
			render 'new'
		end
	end

	def destroy	
	end
end