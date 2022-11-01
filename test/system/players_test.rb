require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "creating a Player" do
    visit players_url
    click_on "New Player"

    fill_in "Amateur team", with: @player.amateur_team
    fill_in "Assists", with: @player.assists
    fill_in "Draft pick", with: @player.draft_pick
    fill_in "Draft team", with: @player.draft_team
    fill_in "Draft year", with: @player.draft_year
    fill_in "Games played", with: @player.games_played
    fill_in "Goals", with: @player.goals
    fill_in "Name", with: @player.name
    fill_in "Nationality", with: @player.nationality
    fill_in "Penalty minutes", with: @player.penalty_minutes
    fill_in "Plus minus", with: @player.plus_minus
    fill_in "Point share", with: @player.point_share
    fill_in "Points", with: @player.points
    fill_in "Position", with: @player.position
    fill_in "Retirement year", with: @player.retirement_year
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Amateur team", with: @player.amateur_team
    fill_in "Assists", with: @player.assists
    fill_in "Draft pick", with: @player.draft_pick
    fill_in "Draft team", with: @player.draft_team
    fill_in "Draft year", with: @player.draft_year
    fill_in "Games played", with: @player.games_played
    fill_in "Goals", with: @player.goals
    fill_in "Name", with: @player.name
    fill_in "Nationality", with: @player.nationality
    fill_in "Penalty minutes", with: @player.penalty_minutes
    fill_in "Plus minus", with: @player.plus_minus
    fill_in "Point share", with: @player.point_share
    fill_in "Points", with: @player.points
    fill_in "Position", with: @player.position
    fill_in "Retirement year", with: @player.retirement_year
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end
