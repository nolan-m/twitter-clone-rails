class TweetsController < ApplicationController
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      current_user.tweets << @tweet
      @tweet.mention_mail
      redirect_to :back, notice: "Tweet Created."
    else
      redirect_to user_path(current_user), :flash => { :error => "BAD TWEET!" }
    end
  end

private
  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
