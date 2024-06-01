class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({ "email" => params["email"] })
    if @user["password"] == params["password"]
      # login the user
      redirect_to "/places"
    else
      redirect_to "/login
    if BCrypt::Password.new(@user["password"]) == params["password"]
  end

  def destroy
  end
end
  