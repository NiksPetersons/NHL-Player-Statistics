class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :games_played
      t.integer :goals
      t.integer :assists
      t.integer :points
      t.integer :plus_minus
      t.string :draft_team
      t.string :nationality
      t.integer :draft_year
      t.integer :draft_pick
      t.integer :retirement_year
      t.integer :penalty_minutes
      t.integer :point_share
      t.string :amateur_team

      t.timestamps
    end
  end
end
