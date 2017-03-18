class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @songs = Song.find(params[:id])
  end

  def new
    @songs = Song.new
  end

  def create
    @songs = Song.new(song_params)

    if @songs.save
        redirect_to @songs
    else
      render "new", notice: "Song has not been saved"
    end
  end

  def edit
    @songs = Song.find(params[:id])
  end

  private
    def song_params
      params.require(:song).permit(:title, :genre, :artist_id)
    end
end
