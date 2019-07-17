class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CurrentCart
  before_action :set_cart

  def logged_in?
    current_user != nil
  end

  def require_user
    if !logged_in?
      flash[:notice] = 'You must be logged in to perform this action'
      redirect_to root_path
    end
  end
end
