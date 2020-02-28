class DressesController < ApplicationController
  before_action :find_dress, only: [:show, :edit,:update,:destroy]

  def index
    @dresses = Dress.geocoded
    @markers = @dresses.map do |dress|
      {
        lat: dress.latitude,
        lng: dress.longitude
      }
    end
  end

  def show

  end

  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(dress_params)
    if @dress.save
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dress.update(dress_params)
    redirect_to dress_path(@dress)
  end

  def destroy
    @dress.destroy
    redirect_to dresses_path
  end

  private
  def find_dress
    @dress = Dress.find(params[:id])
  end

  def dress_params
    params.require(:dress).permit(:name, :price, :category,:size, :photo, :address)
  end
end
