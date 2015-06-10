class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_name = User.find(params[:user_id]).name;
    if @review.save
      flash[:success] = "Your review was posted!"
      redirect_to location_path(@review.location_id)
    else
      flash[:danger] = @review.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    flash[:danger] = "Your review has been deleted!"
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to location_path(@review.location_id)
  end


  private

  def review_params
    params.require(:review).permit(:rating, :photo, :content, :user_id, :user_name, :location_id)
  end

end
