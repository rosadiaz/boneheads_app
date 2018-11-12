class ApplicationController < ActionController::Base
  
  private
  def current_user
    @current_user ||= User.find(session[:user_id])  
  end
  helper_method :current_user

  def user_signed_in?
    current_user.present?
  end
  helper_method(:user_signed_in?)

  def authenticte_user!
    unless user_signed_in?
      flash[:alert] = 'You must log in or create a new user first'
      redirect_to new_sessions_path
    end
  end
end
