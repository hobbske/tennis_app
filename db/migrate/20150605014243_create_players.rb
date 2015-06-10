class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.string :photo
      t.string :team_name
      t.string :role
      t.string :gender
      t.string :age_category
      t.string :skill_level
      t.integer :record_ind
      t.integer :record_team
      t.string :phone_num
      t.string :phone_type
      t.string :email
      t.string :day_pref1
      t.string :time_pref1
      t.string :day_pref2
      t.string :time_pref2
      t.string :password_digest
      t.string :remember_token
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
