class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  has_many :relationships
  has_many :followed_users
  has_many :followed_users, through: :relationships, source: :followed_id
  validates_presence_of :handle

  before_create :welcome_message

  def welcome_message
    UserMailer.welcome_message(self).deliver
  end

end
