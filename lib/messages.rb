class Message

  def welcome
    "Welcome to BATTLESHIP.\n\n"
  end

  def main_menu
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    "You are playing against a very simple computer.

    Both you and the comuter will place your ships on the given board.

    Once all the ships are palced both you and the computer will take turns making
    guesses where the other's ships are.  Guesses are made using grid positions, similar
    to how you placed your ships on the board.

    the game is over once either you or the comuter has successfully sunk the
    opponent's ships.

    Good luck and have fun!\n\n"
  end

  def quit
    "Thanks for playing. We hope you enjoyed the game."
  end

  def invalid
    "Invalid selection. Please try again."
  end

  def computer_placed_ships
    "I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long.
    The grid has A1 at the top left and D4 at the bottom right.

    Enter the squares for the two-unit ship:"
  end

end
