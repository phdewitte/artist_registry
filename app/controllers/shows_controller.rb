class ShowsController < ApplicationController
  before_action :find_headliner

  def index
    @shows = Show.all
  end

  def new
    @artist.shows.new
  end

  def create
    @show = @artist.shows.new(show_params)
    if @show.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  private
    def find_headliner
      @artist = Artist.find_by(params[:artist_id])
    end

    def show_params
      params.require(:show).permit(:date, :time, :venue, :city)
    end

end