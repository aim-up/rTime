class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def update
    if current_user.update_attributes(params[:user])
      redirect_to root_url, :success => "Update success!"
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
end
