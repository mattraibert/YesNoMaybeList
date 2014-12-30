class AddUserRelationshipIdtoAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :user_relationship_id, :integer
  end
end
