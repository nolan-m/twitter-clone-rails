class UsersController < ApplicationController

  def index
  end

  def show
    @tweet = Tweet.new
    @user =User.find(params[:id])
  end


end
