class AddUserToPlayermatches < ActiveRecord::Migration
  def change
    add_reference :playermatches, :user, index: true, foreign_key: true
  end
end
