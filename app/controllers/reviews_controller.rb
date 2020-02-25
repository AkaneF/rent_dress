class ReviewsController < ApplicationController
  def new
    @dress = Dress.find(params[:dress_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @dress = Dress.find(params[:dress_id])
    @review.dress = @dress
    @review.user_id = current_user.id

    if @review.save
      redirect_to dress_path(@dress)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to dresses_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

