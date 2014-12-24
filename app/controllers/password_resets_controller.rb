class PasswordResetsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    user.send_password_reset if user
    redirect_to root_path
  end

  def edit
    @user = User.find_by(password_reset_token!: params[:id])
  end

end