json.array!(@groups) do |group|
  json.extract! group, :id, :group_name, :season, :year, :gender, :skill_level, :age_category, :roster_max
  json.url group_url(group, format: :json)
end
