class ArtistsController < ApplicationController
	def index
		@artists = Artist.all
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			session[:user_id] = @artist.id
			session[:user_type] = "artist"
			redirect_to artist_path(@artist)
		else
			@errors = @artist.errors.full_messages
			render :new
		end
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def update
		@artist = Artist.find(params[:id])
		@artist.update(artist_params)
		if @artist.update
			redirect_to artist_path
		else
			@errors = @artist.errors.full_messages
			render :edit_artist_path
		end
	end

	private
		def artist_params
			params.require(:artist).permit(:name, :email, :location, :photo_url, :bio, :password)
		end
end