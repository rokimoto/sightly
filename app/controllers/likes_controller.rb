class LikesController < ApplicationController

  def create
    @like = Like.new(like_params)
    if @like.save 
      flash[:success] = "Added favorite!"
      redirect_to user_path(current_user)
    else
      flash[:danger] = @like.errors.full_messages.to_sentence
      redirect_to locations_path
    end
  end

  def destroy
    flash[:alert] = "Unfavorited your location!"
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to user_path(current_user)
  end

  private
  def like_params
    params.require(:like).permit(:user_id, :location_id)
  end

end
