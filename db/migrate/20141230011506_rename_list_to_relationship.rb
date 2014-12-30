class RenameListToRelationship < ActiveRecord::Migration
  def change
    table_name :lists, :relationships
  end
end
