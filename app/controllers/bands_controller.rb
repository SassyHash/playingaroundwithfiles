class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    b = Band.new
    b.name = params[:name]
    if b.save
      redirect_to bands_path
    else
      render 'new'
    end
  end

  def show
    @band = Band.find(params[:id])
  end

  def edit
    @artist = Artist.new
    @band = Band.find(params[:id])
    if @band.artists.empty?
      @possible_new_artists = Artist.all
    else
      @possible_new_artists = Artist.all.select! do |artist|
        !@band.artists.include?(artist)
      end
    end
  end

  def update
    b = Band.find(params[:id])
    b.name = params[:band][:name]
    b.save

    if params[:artists]
      a = Artist.find(params[:artists][:artist_id])
      b.artists << a
    end
    if params[:deleted]
      d = Artist.find(params[:deleted][:artist_id])
      b.artists.delete(d)
    end

     redirect_to edit_band_path(b)
  end

  def destroy

    band = Band.find(params[:id])
    band.recordings.each { |recording| recording.destroy }
    band.artists.each { |member| member.destroy }
    band.albums.each { |album| album.destroy }
    band.destroy

    redirect_to bands_path
  end

end
