class AlbumsController < ApplicationController
  def index
    @albums = Album.search(params[:name])
  end
  def show
    @consulta = Album.find(params[:id])
  end
end
