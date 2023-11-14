class ApplicationController < ActionController::Base
  helper_method :current_user 

  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end 

  def redirect_user
    redirect_to root_path if current_user 
  end

  def require_user 
    redirect_to '/login' unless current_user 
  end
end
