class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render new_user_registration_path
    end
  end

  private

  def user_params
    params.require(:post).permit(:username, :email, :password)
  end
end
