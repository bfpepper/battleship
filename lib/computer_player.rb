require "./lib/game_board"
require "./lib/ship_placement"

class ComputerPlayer

  attr_accessor :computer_board, :human_board

  #things that CP has to do
    #place ships

  def initialize
    @computer_board = GameBoard.new
    @human_board = GameBoard.new

  end

  def fire
    position = get_fire_posiiton
    row = row_hash[position[0]]
    column = position[1]
    human_board.internal_board[row][column.to_i] = "H" #need to compare to ship placement and make dynamic.
  end

  def row_hash
    {"A" => 0, "B" => 1, "C" => 2, "D" => 3}
  end

  def get_fire_posiiton
    human_board.valid_moves.shuffle!.pop
  end

  def place_ship(ship_size)
    all_cordinates = random_placement(ship_size).split(" ")
    
    binding.pry
  end

  def random_placement(ship_size)
    return ShipPlacement.new.ship_size_2_array.shuffle.pop if ship_size == 2
    return ShipPlacement.new.ship_size_3_array.shuffle.pop if ship_size == 3
  end

end
