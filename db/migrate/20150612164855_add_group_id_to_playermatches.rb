class AddGroupIdToPlayermatches < ActiveRecord::Migration
  def change
    add_column :playermatches, :group_id, :integer
  end
end
