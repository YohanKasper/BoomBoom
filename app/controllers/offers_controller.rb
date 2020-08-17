class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offer_path(@offer), notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  def edit
    # @offer = Offer.find(params[:id])
  end

  def update
    if @offer.update(offer_params)
      redirect_to offer_path(@offer), notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :date, :category)
  end
end
