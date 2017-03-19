class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
        redirect_to @song
    else
      render "new", notice: "Song has not been saved"
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  private
    def song_params
      params.require(:song).permit(:title, :genre, :artist_id)
    end
end
