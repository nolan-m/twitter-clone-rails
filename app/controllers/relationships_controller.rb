class RelationshipsController < ApplicationController

  def create
    @user = User.find(params[:id])
    @user.followers << current_user
    redirect_to :back
  end


end
