class AttractionsController < ApplicationController

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction=Attraction.create(
      name: params[:attraction][:name],
      min_height: params[:attraction][:min_height],
      happiness_rating: params[:attraction][:happiness_rating],
      nausea_rating: params[:attraction][:nausea_rating],
      tickets: params[:attraction][:tickets]
      )
    redirect_to attraction_path(@attraction)
  end

  def index
    @attractions = Attraction.all
  end

  def show
    @user = User.find(session[:user_id])
    @attraction = Attraction.find(params[:id])
  end




end
