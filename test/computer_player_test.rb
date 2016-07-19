require "./test/test_helper"
require "./lib/computer_player"

class ComputerPlayerTest < Minitest::Test

  def test_a_new_board_is_created
    result = [["A", " ", " ", " ", " "],
              ["B", " ", " ", " ", " "],
              ["C", " ", " ", " ", " "],
              ["D", " ", " ", " ", " "]]
    request = ComputerPlayer.new.computer_board.full_board
    assert_equal result, request
  end

  def test_it_can_see_player_board
    result = [["A", " ", " ", " ", " "],
              ["B", " ", " ", " ", " "],
              ["C", " ", " ", " ", " "],
              ["D", " ", " ", " ", " "]]
    request = ComputerPlayer.new.human_board.full_board
    assert_equal result, request
  end

  def test_the_computer_can_pick_a_random_firing_location
    results = []
    5.times{ results << ComputerPlayer.new.get_fire_posiiton }
    assert results.uniq.count > 1
  end

  def test_the_computer_can_fire_on_human_board
    player = ComputerPlayer.new
    assert_equal player.human_board.full_board, player.human_board.internal_board
    player.fire
    refute_equal player.human_board.full_board, player.human_board.internal_board
  end

  def test_only_a_spot_is_hit_once
    player = ComputerPlayer.new
    16.times{ player.fire }
    assert_equal [], player.human_board.valid_moves
  end



end
