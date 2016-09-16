class FansController < ApplicationController

  def index
    @fans = Fan.all
  end

  def new
    @fan = Fan.new
  end

  def create
    @fan = Fan.new(fan_params)
    if @fan.save
      session[:user_id] = @fan.id
      session[:user_type] = "fan"
      redirect_to fan_path(@fan)
    else
      @errors = @fan.errors.full_messages
      render :new
    end
  end

  def show
    @fan = Fan.find(params[:id])
  end

  def update
    @fan = Fan.find(params[:id])
		@fan.update(fan_params)
		if @fan.update
			redirect_to fan_path
		else
			@errors = @fan.errors.full_messages
			render :edit_artist_path
    end
  end

  private

  def fan_params
    params.require(:fan).permit(:name, :username, :email, :password, :location, :bio, :photo_url)
  end

end
