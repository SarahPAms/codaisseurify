class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params)
  end

  def new
    @song = Song.new
  end

  def create
  end

  def edit
  end

  def update
  end

  private
    def song_params
      params.require(:song).permit(:title, :genre)
    end
end
