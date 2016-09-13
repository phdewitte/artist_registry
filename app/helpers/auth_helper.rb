module AuthHelper
  def current_artist
    @current_artist ||= Artist.find_by(id: session[:artist_id])
  end

  def current_fan
    @current_fan ||= Fan.find_by(id: session[:fan_id])
  end

  # need to agree on login rest routes for following

  # def logged_in?
  #   !current_artist.nil? || !current_fan.nil?
  # end

  def authorize!
    # redirect_to new_session_path unless logged_in?
  end
end