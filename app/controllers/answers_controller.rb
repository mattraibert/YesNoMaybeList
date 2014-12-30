class AnswersController < ApplicationController

  def new(activity)
    @activity = Activity.find(activity.id)
    @answer = Answer.new
    @answer.name = activity.name
  end

  def create
    @answer = Answer.new

  end
end
