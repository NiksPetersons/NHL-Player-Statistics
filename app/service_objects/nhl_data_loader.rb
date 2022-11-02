require "csv"

class NhlDataLoader
    def csv_loader
        @csv_content ||= CSV.read(Rails.root.join("app","files", "nhldraft.csv")) # D:/Programming/NewProjects/NHL-Player-Statistics/nhlstats/app/files/nhldraft.csv

        @csv_content.each do |row|
            Player.create!(name: row[4], position: row[6], games_played: row[10], goals: row[11], assists: row[12], points: row[13], plus_minus: row[14], draft_team: row[3], nationality: row[5], draft_year: row[1], draft_pick: row[2], retirement_year: row[8], penalty_minutes: row[15], point_share: row[22], amateur_team: row[9])
        end
    end
end