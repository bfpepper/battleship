require "./test/test_helper"
require "./lib/game"

class GameTest < Minitest::Test

  def test_it_can_have_a_greating_message
    message = "Welcome to BATTLESHIP\n\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
    assert_equal message, Game.new.start_game
  end

end
