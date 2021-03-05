module SessionHelper
  def sign_in(user = nil)
    session[:user_id] = user&.id
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def sign_out
    session.delete(:user_id)
  end

  def logged_in?
    current_user.present?
  end
end
