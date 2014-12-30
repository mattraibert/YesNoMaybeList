class RelationshipsController < ApplicationController

  def create
    list = Relationship.new
    if list.save
      relationship = UserRelationship.new
      relationship.user_id = current_user.id
      relationship.save!
      redirect_to relationship_path(relationship.id)
    else
      redirect_to user_path(current_user.id)
    end
  end

  def show
    @relationship = Relationship.find(params[:id])
    @partners = User.partners(params[:id])
    @activities = Activity.all
  end

  def destroy
  end
end
