require "./lib/game_board"

class HumanPlayer

  attr_accessor :human_board

  def initialize
    @human_board = GameBoard.new.full_board
  end

end
