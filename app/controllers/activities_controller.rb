class ActivitiesController < ApplicationController
  before_action :require_admin, only: [:create]

  def index
    @activity = Activity.new
    @activities = Activity.all
  end

  def create
    failed_saves = []
    activity_params = params[:activity][:name]
    activity_params.each do |activity_name|
      activity = Activity.new(name: activity_name.downcase)
      if activity.save == false
        failed_saves<<activity_name
      end
    end

    if !failed_saves.empty?
      redirect_to activities_path, notice: "Unable to save #{failed_saves.join(", ")}."
    else
      redirect_to activities_path
    end
  end

  def require_admin
    unless current_user.user_is_admin?
      flash[:error] = "Only admin can add to main activity database"
      redirect_to root_path #user_path
    end
  end

end
