module AuthHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def sign_in(user = nil)
    session[:user_id] = user&.id
  end

  def sign_out
    session.delete(:user_id)
  end
end