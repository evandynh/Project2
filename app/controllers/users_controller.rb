class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.skills.build
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
    @user.skills.build
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

  def destroy
    if current_user == @user
      @user.destroy
      redirect_to users_path
    else
      redirect_to current_user
    end
  end
private

  def user_params
    params.require(:user).permit(:name, :description, :dob, :email, :password, :password_confirmation, :image,  skills_attributes:[:id, :category_id, :description, :price, :_destroy])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
