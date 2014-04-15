class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  validates_presence_of :handle

  before_create :welcome_message

  def welcome_message
    UserMailer.welcome_message(self).deliver
  end

end
