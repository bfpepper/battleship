class GameBoard

  attr_reader :valid_moves
  attr_accessor :internal_board

  def initialize
    @valid_moves = %w(A1 A2 A3 A4 B1 B2 B3 B4
                       C1 C2 C3 C4 D1 D2 D3 D4)

    @internal_board = full_board
  end

  def header_footer
    "==========="
  end

  def columns
    ". 1 2 3 4"
  end

  def rows(letter)
    [letter, " ", " ", " ", " "]
  end

  def full_board
      [rows("A"),
      rows("B"),
      rows("C"),
      rows("D")]
  end

  # def show_board
  # header_footer + "\n" +columns
  #   full_board.each do |row|
  #     row.each do |thing|
  #       print thing + " "
  #     end
  #     puts "\n"
  #   end
  # header_footer
  # end

end
