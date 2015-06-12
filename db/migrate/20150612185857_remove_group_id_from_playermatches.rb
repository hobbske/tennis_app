class RemoveGroupIdFromPlayermatches < ActiveRecord::Migration
  def change
    remove_column :playermatches, :group_id, :integer
  end
end
