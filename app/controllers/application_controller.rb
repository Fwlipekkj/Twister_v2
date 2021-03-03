class ApplicationController < ActionController::Base
  include AuthHelper
  before_action :authenticate_user!

  def authenticate_user!
    redirect_to user_login_path unless logged_in?
  end
end
