json.extract! player, :id, :name, :position, :games_played, :goals, :assists, :points, :plus_minus, :draft_team, :nationality, :draft_year, :draft_pick, :retirement_year, :penalty_minutes, :point_share, :amateur_team, :created_at, :updated_at
json.url player_url(player, format: :json)
