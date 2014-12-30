class RenamePartneractivityToAnswer < ActiveRecord::Migration
  def change
    rename_table :partneractivities, :answers
  end
end
