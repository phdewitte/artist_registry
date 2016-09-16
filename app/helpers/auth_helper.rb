module AuthHelper
  def current_artist
    @current_artist ||= Artist.find_by(id: session[:user_id])
  end

  def current_fan
    @current_fan ||= Fan.find_by(id: session[:user_id])
  end

  def artist_logged_in?
    !current_artist.nil?
  end

  def fan_logged_in?
    !current_fan.nil?
  end

  def authorize!
    redirect_to new_session_path unless logged_in?
  end

   def authenticate(password)
    self.password == password
  end
end