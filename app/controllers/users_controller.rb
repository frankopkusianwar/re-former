class UsersController < ApplicationController
  def create
    @user = User.new(create_params)
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if @user.save
      flash[:success] = 'Your profile was created.'
      redirect_to new_user_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
    if @user.update[create_params]
      flash[:success] = 'Your profile was edited.'
      redirect_to new_user_path
    else
      render 'edit'
    end
  end

  def new
    @user = User.new
    @users = User.all
  end

  private
  def create_params
    params.require(:user).permit(:username, :email, :password)
  end
end
