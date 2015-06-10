class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :require_user, :require_admin
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
      return @current_user
    else
      return nil
    end
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def require_admin
    redirect_to '/login' unless current_user.admin?
  end

  def is_user?
    current_user == User.find(params[:id])
  end

  def who_is_user
    redirect_to 'login' unless is_user?
  end
end
