class UsersController < ApplicationController
  def show
    #binding.pry
    if !session[:user_id].blank?
      @user = User.find(session[:user_id])
    else
      redirect_to '/'
    end
  end


  def new
    @user = User.new

  end

  def create
    #binding.pry
    @user = User.create(
      name: params[:user][:name],
      password: params[:user][:password],
      nausea: params[:user][:nausea],
      happiness: params[:user][:happiness],
      tickets: params[:user][:tickets],
      height: params[:user][:height],
      admin: params[:user][:admin]
      )
      #binding.pry
      session[:user_id] = @user.id
      # redirect_to "/users/#{@user.id}"
      redirect_to user_path(@user)
  end


  def index

  end

  def edit

  end

  def update
      ride = Ride.new(user_id: session[:user_id], attraction_id: params[:attraction_id])
      @user= User.find(ride.user_id)
      flash[:notice] = ride.take_ride
      redirect_to user_path(@user)
  end

end
