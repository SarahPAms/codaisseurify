class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
  end

  def destroy
  end
end
