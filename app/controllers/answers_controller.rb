class AnswersController < ApplicationController

  def new
    activity= Activity.find(params[:id])
    @activity_name = activity.name
    @answer = Answer.new
  end

  def create
    @activity = Activity.find(activity.id)
    @answer = Answer.new
    @answer.name = activity.name
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to relationship_path
    else
      redirect_to
    end
  end

end
