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
    @band = Band.find(params[:id])
    @possible_new_artists = Artist.all.select! { |artist| !@band.artists.include?(artist) }
  end

  def update
    b = Band.find(params[:id])
    b.name = params[:name] if params[:name]
    b.save
    if params[:artists]
      a = Artist.find(params[:artists][:artist_id])
      b.artists << a
    end
    if params[:deleted]
      d = Artist.find(params[:deleted][:artist_id])
      b.artists.delete(d)
    end

    redirect_to band_path(b)
  end

  def destroy
  end

end
