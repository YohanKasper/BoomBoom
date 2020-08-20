class ReviewsController < ApplicationController
  def new
    @offer = Offer.find(params[:offer_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @offer = @booking.offer

    if @review.save
      redirect_to offer_path(@offer)
    else
      render 'offers/show'
    end
  end

 private

  def review_params
    params.require(:review).permit(:content)
  end
end
