class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]
  def index
    @artist = Artist.all
  end

  def show
  end

  def new
    @artist  = Artist.new
  end

  def create
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end
end
