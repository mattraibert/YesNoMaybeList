class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :list_id
      t.integer :user_id

      t.timestamps
    end
  end
end
