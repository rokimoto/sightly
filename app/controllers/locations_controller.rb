class LocationsController < ApplicationController
  def index
    url = "https://maps.googleapis.com/maps/api/js?key="
    key = ENV['GOOGLE_MAPS']
    @endpoint = url + key

    @like = Like.new

    if params[:search].present?
      if params[:search_type] == "Name"
        @target = Location.where("LOWER(name) LIKE ?","%#{params[:search].downcase}%").first || nil
        if @target
          @locations = Location.near(@target.address, 10, :order => "distance").limit(10)
        else
          flash[:danger] = "No matches found!"
          @locations = nil
          @target = nil
        end
      elsif params[:search_type] == "Location"
        if Location.near(params[:search], 10)
          @locations = Location.near(params[:search], 10, :order => "distance").limit(10)
        else
          flash[:danger] = "No matches found!"
          @locations = Location.all
        end
      end
    else
      @locations = Location.all.limit(20) #Location Limited to 20
    end
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    if @location.save
      flash[:success] = "Your location was created!"
      redirect_to @location
    else
      flash[:danger] = @location.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def show
    @location = Location.find(params[:id])
    @client = Yelp.client.business(@location.yelp_id)
  end

  def destroy
    flash[:danger] = "Your location has been deleted!"
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  private
  def location_params
    params.require(:location).permit(:name, :address, :latitude, :longitude, :yelp_id)
  end


end
