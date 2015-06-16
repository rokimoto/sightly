class UsersController < ApplicationController

  before_action :who_is_user, only: [:edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Trippy "+ @user.name + "!"
      session[:user_id] = @user.id
      redirect_to locations_path
    else
      flash[:danger] = @user.errors.full_messages.to_sentence
      redirect_to welcome_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Your profile was updated!"
      redirect_to user_path(@user)
    else
      flash[:danger] = @user.errors.full_messages.to_sentence
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :profile_picture, :bio, :password, :password_confirmation)
  end

end
