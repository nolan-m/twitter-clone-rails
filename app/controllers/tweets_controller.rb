class TweetsController < ApplicationController
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      current_user.tweets << @tweet
      redirect_to :back, notice: "Tweet Created."
    else
      render user_path(current_user)
    end
  end

private
  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
