class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :season
      t.string :year
      t.string :gender
      t.string :skill_level
      t.string :age_category
      t.integer :roster_max

      t.timestamps null: false
    end
  end
end
