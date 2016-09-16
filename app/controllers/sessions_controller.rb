class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:user_type] == "artist"
      @user = Artist.find_by(email: params[:email])
      user_redirect = artist_path(@user)
    elsif params[:user_type] == "fan"
      @user = Fan.find_by(email: params[:email])
      user_redirect = fan_path(@user)
    end

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:user_type] = params[:user_type]
      redirect_to user_redirect
    else
      @error = "Your login credentials were invalid"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to root_path
  end

end