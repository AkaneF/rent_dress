class DressesController < ApplicationController
  def index
    @dresses = Dress.all
  end
  def show
    @dress = Dress.find(params[:id])
  end
  def new
    @dress = Dress.new
  end
  def create
    @dress = Dress.new(dress_params)
    if @dress.save
      redirect_to dresses_path
    else
      render :new
    end
  end

  private

  def dress_params
    params.require(:dress).permit(:name, :price, :category,:size)
  end
end
