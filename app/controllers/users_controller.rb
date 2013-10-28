class UsersController < ApplicationController

  def new
    if params[:fail]
	@user = session[:fail]
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
      session[:fail] = @user
      redirect_to signup_path(:fail => true)
    end
  end

end
