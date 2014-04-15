class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    User.last.welcome_message
  end

  def update
    super
  end
end
