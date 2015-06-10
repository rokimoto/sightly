class SessionsController < ApplicationController

  before_action :require_user, only: [:loggedin]

  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to locations_path
    else
      render 'new'
    end
  end

  def create_facebook
    user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to locations_path
  end

  def loggedin
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
