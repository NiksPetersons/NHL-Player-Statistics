require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { amateur_team: @player.amateur_team, assists: @player.assists, draft_pick: @player.draft_pick, draft_team: @player.draft_team, draft_year: @player.draft_year, games_played: @player.games_played, goals: @player.goals, name: @player.name, nationality: @player.nationality, penalty_minutes: @player.penalty_minutes, plus_minus: @player.plus_minus, point_share: @player.point_share, points: @player.points, position: @player.position, retirement_year: @player.retirement_year } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { amateur_team: @player.amateur_team, assists: @player.assists, draft_pick: @player.draft_pick, draft_team: @player.draft_team, draft_year: @player.draft_year, games_played: @player.games_played, goals: @player.goals, name: @player.name, nationality: @player.nationality, penalty_minutes: @player.penalty_minutes, plus_minus: @player.plus_minus, point_share: @player.point_share, points: @player.points, position: @player.position, retirement_year: @player.retirement_year } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
