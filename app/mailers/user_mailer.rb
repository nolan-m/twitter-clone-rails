class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_message(user)
    @user = user
    mail to: user.email, subject: "Sign Up Confirmation"
  end

  def tweet_mailer(user, tweet)
    @user = user
    @tweet = tweet
    mail to: user.email, subject: "You were tagged in a Tweet"
  end

end
