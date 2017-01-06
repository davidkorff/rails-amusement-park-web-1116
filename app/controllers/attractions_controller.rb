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
    @user = User.find(session[:user_id])
    @attractions = Attraction.all
  end

  def show
    @user = User.find(session[:user_id])
    @attraction = Attraction.find(params[:id])
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update(
    name: params[:attraction][:name],
    tickets: params[:attraction][:tickets],
    nausea_rating: params[:attraction][:nausea_rating],
    happiness_rating: params[:attraction][:happiness_rating],
    min_height: params[:attraction][:min_height]
    )
    redirect_to attraction_path(@attraction)
  end



end
