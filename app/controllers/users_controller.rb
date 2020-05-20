class UsersController < ApplicationController
  def create
    @user = User.new(create_params)
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  private
  def create_params
    params.require(:user).permit(:username, :email, :password)
  end
end
