class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])

    if !!@user && @user.authenticate(params[:user][:password]).password_digest == @user.password_digest
      #binding.pry
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to sessions_path
    end

  end

  def destroy
    #binding.pry
    session[:user_id] = nil
    # binding.pry
    redirect_to root_path

  end


end
