class ArtistsController < ApplicationController
  def index
    @artists = Artist.all

  end

  def new

  end

  def create
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
  end

  def destroy
    @artist = Artist.find(params[:id])
  end


end
