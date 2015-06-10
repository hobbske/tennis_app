class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.datetime :match_datetime
      t.string :match_loc_name
      t.text :match_note
      t.string :match_opp
      t.string :match_outcome
      t.integer :match_score
      t.string :match_loc_address
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
