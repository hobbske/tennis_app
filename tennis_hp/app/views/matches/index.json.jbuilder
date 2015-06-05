json.array!(@matches) do |match|
  json.extract! match, :id, :match_datetime, :match_loc_name, :match_note, :match_opp, :match_outcome, :match_score, :match_loc_address, :created_at, :updated_at
  json.url match_url(match, format: :json)
end
