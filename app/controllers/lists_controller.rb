class ListsController < ApplicationController

  def create
    list = List.new
    if list.save
      relationship = Relationship.new
      relationship.user_id = current_user.id
      relationship.list_id = list.id
      relationship.save!
      redirect_to list_path(list.id)
    else
      redirect_to user_path(current_user.id)
    end
  end

  def show
    @list = List.find(params[:id])
    @partners = User.partners(params[:id])
    @activities = Activity.all
  end

  def destroy
  end
end
