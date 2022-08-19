class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(params[:user_id]) if params[:user_id]
  end
end
