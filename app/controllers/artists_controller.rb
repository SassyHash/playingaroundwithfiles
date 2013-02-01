class ArtistsController < ApplicationController
  def index
    @artists = Artist.all

  end

  def new

  end

  def create
    name = params[:artist][:name]
    artist = Artist.create(:name => name)
    band = Band.find(params[:artist][:band])

    BandArtist.create(:band_id => band.id, :artist_id => artist.id)
    redirect_to edit_band_path(band.id)
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
