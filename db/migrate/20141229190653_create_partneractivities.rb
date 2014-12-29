class CreatePartneractivities < ActiveRecord::Migration
  def change
    create_table :partneractivities do |t|
      t.string :name
      t.integer :user_id
      t.integer :list_id
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
