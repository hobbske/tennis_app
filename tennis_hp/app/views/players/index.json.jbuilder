json.array!(@players) do |player|
  json.extract! player, :id, :first_name, :last_name, :user_name, :password, :photo, :team_name, :role, :gender, :age_category, :skill_level, :record_ind, :record_team, :phone_num, :phone_type, :email, :day_pref1, :time_pref1, :day_pref2, :time_pref2, :password_digest, :remember_token, :created_at, :updated_at
  json.url player_url(player, format: :json)
end
