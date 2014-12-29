class PartneractivitiesController < ApplicationController

  def new(activity)
    @activity = Activity.find(activity.id)
    @partneractivity = Partneractivity.new
    @partneractivity.name = activity.name
  end

  def create
    @partneractivity = Partneractivity.new

  end
end
