class UsersController < ApplicationController

  def new
    if session[:fail]
	@user = session[:failUser]
    else
   	@user = User.new
    end
  end

  def create
    @user = User.new(params[:user])
    if @user.save
	  sign_in @user
      redirect_to root_path
      #Should sign in and redirect to home page
    else
      session[:failUser] = @user
	  session[:fail] = true
      redirect_to signup_path
    end
  end

end
