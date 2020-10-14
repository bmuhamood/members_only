class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
  end

  private

  def user_params
    params.require(:post).permit(:username, :email, :password)
  end
end
