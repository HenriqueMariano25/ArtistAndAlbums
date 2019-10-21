class TracksController < ApplicationController
  def index
    @tracks = Track.includes(album: :artist).order(:name)
    @tracks = Track.search(params[:name]) if params[:name].present?
  end
end
