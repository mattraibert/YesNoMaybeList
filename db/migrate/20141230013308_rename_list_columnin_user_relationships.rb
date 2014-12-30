class RenameListColumninUserRelationships < ActiveRecord::Migration
  def change
    rename_column :user_relationships, :list_id, :relationship_id
  end
end
