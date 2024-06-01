class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({ "username" => params["username"] })
    if BCrypt::Password.new(@user["password"]) == params["password"]
      # login the user
      redirect_to "/places"
    else
      redirect_to "/login"
    end
  end

  def destroy
  end
end
  