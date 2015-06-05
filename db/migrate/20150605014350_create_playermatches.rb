class CreatePlayermatches < ActiveRecord::Migration
  def change
    create_table :playermatches do |t|
      t.references :player, index: true, foreign_key: true
      t.references :match, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
