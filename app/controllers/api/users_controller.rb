class Api::UsersController < ApplicationController
  def create
    @user = User.new(users_params)
    if @user.save
      login(@user)
      render json: ["SUCCESSSSSSSSS"]
    else
      render json: ["invalid credentials"], status: 422
    end 
  end

  def users_params 
    params.require(:user).permit(:username, :password)
  end 
end
