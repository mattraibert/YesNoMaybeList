class RenameRelationshipToUserRelationship < ActiveRecord::Migration
  def change
    rename_table :relationships, :user_relationships
  end
end
