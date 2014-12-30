class RenameListToRelationship < ActiveRecord::Migration
  def change
    rename_table :lists, :relationships
  end
end
