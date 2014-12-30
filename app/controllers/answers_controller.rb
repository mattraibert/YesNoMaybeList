class AnswersController < ApplicationController

  def new
    @activity= Activity.find(params[:activity_id])
    @answer = Answer.new
  end

  def create
    activity= Activity.find(params[:activity_id])
    @answer = Answer.new(params.require(:answer).permit(:name, :notes, :status))
    @answer.user_id = current_user.id
    if @answer.save
      redirect_to relationship_path(@answer.relationship.id)
    else
      redirect_to relationship_path(@answer.relationship.id)
    end
  end

end
