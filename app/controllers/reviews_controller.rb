class ReviewsController < ApplicationController


  def new
    @offer = Offer.find(params[:offer_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @offer = Offer.find(params[:offer_id])
    @review.offer = @offer
    if @review.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

 private

  def review_params
    params.require(:review).permit(:content)
  end
end
