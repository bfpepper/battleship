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
    assert_equal 0, player.human_board.valid_moves.count
  end

  def test_board_registeres_a_hit_when_the_space_is_ocupied
    player = ComputerPlayer.new
    first_hit = player.fire
    first_hit
    assert "H", player.human_board.internal_board
  end

  def test_can_select_ramdom_ship_placment
    results = []
    5.times{ results << ComputerPlayer.new.random_placement(2) }
    assert results.uniq.count > 1
    5.times{ results << ComputerPlayer.new.random_placement(3) }
    assert results.uniq.count > 1
  end

  def test_can_place_selected_coordinates_on_a_board
    player = ComputerPlayer.new
    board = ComputerPlayer.new.computer_board.full_board
    player.place_ship(2)
    refute_equal board, player.computer_board.internal_board
  end

end
