class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render :edit
    end
  end
  def show
    
  end
private

  def user_params
    params.require(:user).permit(:name, :description, :dob, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(session[:user_id])
  end
end
