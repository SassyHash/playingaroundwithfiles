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
    b.save
    if b.save
      redirect_to bands_path
    else
      render 'new'
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

end
