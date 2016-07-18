class GameBoard

  attr_reader :vailid_moves

  def initialize
    @vailid_moves = %w(A1 A2 A3 A4 B1 B2 B3 B4
                       C1 C2 C3 C4 D1 D2 D3 D4)
  end

  def header_footer
    %w(===========)
  end

  def columns
    %w(. 1 2 3 4)
  end

  def rows(letter)
    [letter, " ", " ", " ", " "]
  end

  def full_board
    [header_footer,
      columns,
      rows("A"),
      rows("B"),
      rows("C"),
      rows("D"),
      header_footer]
  end

  def show_board
    full_board.each do |row|
      row.each do |thing|
        print thing + " "
      end
      puts "\n"
    end
  end

end
