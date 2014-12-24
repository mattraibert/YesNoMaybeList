class ActivitiesController < ApplicationController

  def index
  end

  def create
    activity = Activity.new(params.require(:activity).permit(:name))
    if activity.save
      redirect_to root_path#user_path(current_user.id)
    else
      render :index
    end
  end

end
