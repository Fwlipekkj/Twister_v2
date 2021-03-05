class ApplicationController < ActionController::Base
  include SessionHelper
  before_action :authorize_user

  def authorize_user
    redirect_to user_login_path unless logged_in?
  end
end
