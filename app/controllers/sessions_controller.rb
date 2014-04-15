class SessionsController < Devise::SessionsController

  def new
    @session
  end

  def destroy
    redirect_to root_path
  end

end
