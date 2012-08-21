class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :current_event

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  private
  
  def current_event
    @current_event ||= Event.find_by_id(session[:event_id]) if session[:event_id]
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
end
