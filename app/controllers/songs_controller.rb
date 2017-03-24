class SongsController < ApplicationController
  before_action :set_artist, only: [:show, :new, :create]
  def index
    @song = Song.all
  end

  def show
    @song = @artist.songs.find(params[:id])
  end

  def new
    @song = @artist.songs.new
  end

  def create

    @song = @artist.songs.build(song_params)

    if @song.save
      redirect_to artist_path(@artist), notice: "song was successfully created"
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
        redirect_to @artist, notice: "Song was successfully updated"
      else
        render "edit"
      end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to artist_path
  end

  private
    def song_params
      params.require(:song).permit(:title, :genre, :artist_id)
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
end
