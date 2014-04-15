class UsersController < ApplicationController

  def index
    if current_user
      redirect_to user_path(current_user)
    end
  end

  def show
    @tweet = Tweet.new
    @user = User.find(params[:id])
  end
end
