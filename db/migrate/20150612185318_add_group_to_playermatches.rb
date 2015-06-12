class AddGroupToPlayermatches < ActiveRecord::Migration
  def change
    add_reference :playermatches, :group, index: true, foreign_key: true
  end
end
