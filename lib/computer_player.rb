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
    human_board.internal_board[row][column.to_i] = "H"
  end

  def occupied?(shot_on_board)
    #take in shot convert_string_cordinate
    #compare to board
    #register "h" or "m"
  end

  def row_hash
    {"A" => 0, "B" => 1, "C" => 2, "D" => 3}
  end

  def get_fire_posiiton
    human_board.valid_moves.shuffle!.pop
  end

  def place_ship(ship_size)
    all_cordinates = get_positions(ship_size)
    split_cordinates = split_given_cordinates(all_cordinates)
    numbered_cordinates = convert_string_cordinate(split_cordinates)
    numbered_cordinates.each do |cordinate|
        computer_board.internal_board[cordinate[0]][cordinate[1]] = "O"
    end
  end

  def random_placement(ship_size)
    return ShipPlacement.new.ship_size_2_array.shuffle.pop if ship_size == 2
    return ShipPlacement.new.ship_size_3_array.shuffle.pop if ship_size == 3
  end

  def convert_string_cordinate(split_cordinates)
    split_cordinates.each do |row|
      row[0] = row_hash[row[0]]
    end
    split_cordinates.each do |column|
      column[1] = column[1].to_i
    end
  end

  def get_positions(ship_size)
    random_placement(ship_size).split(" ")
  end

  def split_given_cordinates(all_cordinates)
    all_cordinates.map{|cordinate| cordinate.chars}
  end

end
