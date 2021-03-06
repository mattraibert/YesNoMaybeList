class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      cookies.permanent[:auth_token] = @user.auth_token
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  def show
    @new_list = Relationship.new
    #@lists = Relationship.where(user_id: current_user.id)
    @user = User.find(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
