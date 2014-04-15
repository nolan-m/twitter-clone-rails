class Tweet < ActiveRecord::Base
  belongs_to :user
  validates :content, :presence => true, :length => { :maximum => 140}

  def mention_mail
    self.content.split(' ').each do |word|
      if self.usernames.include?(word[1..-1])
        handle = word[1..-1]
        if !User.find_by(:handle => handle).nil?
          user = User.find_by(:handle => handle)
          UserMailer.tweet_mailer(user, self).deliver
        end
      end
    end
  end

  def usernames
    if /@([A-Za-z0-9_]{1,15})/.match(self.content)
      self.content.scan(/@([A-Za-z0-9_]{1,15})/).flatten
    else
      return ""
    end
  end

  def print_tweet
    string =''
    self.content.split(' ').each do |word|
      if self.usernames.include?(word[1..-1])
        handle = word[1..-1]
        if !User.find_by(:handle => handle).nil?
          string+= '<a href="/users/' + User.find_by(:handle => handle).id.to_s + '"> ' +word+ ' </a>'
        else
          string += word + " "
        end
      else
        string += word + " "
      end
    end
    string
  end

end
