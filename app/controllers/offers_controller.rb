class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @offers = Offer.geocoded

    if params[:query].present?
      @offers = @offers.search_by_title_and_description(params[:query])
    end

    @markers = @offers.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { offer: offer }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end

  def show
    @booking = Booking.new
    @reviews = @offer.reviews
    @average_rating = @reviews.average(:rating)
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer), notice: 'Offer was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @offer.update(offer_params)
      redirect_to offer_path(@offer), notice: 'Offer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path, notice: 'Offer was successfully destroyed.'
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :date, :category, :photo, :address)
  end
end
