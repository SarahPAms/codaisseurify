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
      redirect_to @song, notice: "song was successfully created"
    else
      render "new", notice: "Song has not been saved"
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

      if @song.update_attributes(song_params)
        redirect_to @song
      else
        render "edit"
      end
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
