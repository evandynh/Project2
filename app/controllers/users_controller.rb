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

    # store all emails in lowercase to avoid duplicates and case-sentive login errors
    @user.email.downcase!

    if @user.save
      session[:user_id] = @user.id.to_s
      flash[:notice] = "Account created succesfully!"
      redirect_to users_path
    else
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid email and password and try again."
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
    @user.destroy
    redirect_to users_path
  end
private

  def user_params
    params.require(:user).permit(:name, :description, :dob, :email, :password, :password_confirmation, :image,  skills_attributes:[:id, :category_id, :description, :price, :_destroy])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
