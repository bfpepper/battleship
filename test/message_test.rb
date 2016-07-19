require "./test/test_helper"
require "./lib/messages"

class MessagesTest < Minitest::Test

  def test_welcome_message
    result = "Welcome to BATTLESHIP.\n\n"
    request = Message.new.welcome
    assert_equal result, request
  end

  def test_instructions
    result = "You are playing against a very simple computer.

    Both you and the comuter will place your ships on the given board.

    Once all the ships are palced both you and the computer will take turns making
    guesses where the other's ships are.  Guesses are made using grid positions, similar
    to how you placed your ships on the board.

    the game is over once either you or the comuter has successfully sunk the
    opponent's ships.

    Good luck and have fun!\n\n"
    request = Message.new.instructions
    assert_equal result, request
  end

  def test_it_has_a_quit_message
    result = "Thanks for playing. We hope you enjoyed the game."
    request = Message.new.quit
    assert_equal result, request
  end

  def test_it_has_an_invalid_message
    result = "Invalid selection. Please try again."
    request = Message.new.invalid
    assert_equal result, request
  end

  def test_the_computer_has_placed_ships
    result = "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long.
    The grid has A1 at the top left and D4 at the bottom right.

    Enter the squares for the two-unit ship:"
    request = Message.new.computer_placed_ships
    assert_equal result, request
  end

  def test_there_is_a_strat_menu_message
    result = "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    request = Message.new.main_menu
    assert_equal result, request
  end


end
