class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :current_open_space

  private
  
  def current_open_space
    #TODO actualmente solo soporte un Open Space
    @current_open_space ||= OpenSpace.last
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
