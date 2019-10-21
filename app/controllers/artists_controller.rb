class ArtistsController < ApplicationController
  def index
    @artists = Artist.search(params[:name])
    @teste = request.url
  end

  def show
      @artist = Artist.find(params[:id])
  end
end
