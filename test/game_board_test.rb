require "./test/test_helper"
require "./lib/game_board"

class GameBoardTest < Minitest::Test

  def test_the_board_exists
    assert_instance_of GameBoard, GameBoard.new
  end

  def test_it_has_headers_and_footers
    board = GameBoard.new
    assert_equal ["==========="], board.header_footer
  end

  def test_it_has_numeric_columns
    board = GameBoard.new
    assert_equal [".", "1", "2", "3", "4"], board.columns
  end

  def test_it_has_a_row
    board = GameBoard.new
    assert_equal ["A", " ", " ", " ", " "], board.rows("A")
  end

  def test_it_has_more_than_the_A_row
    board = GameBoard.new
    assert_equal ["C", " ", " ", " ", " "], board.rows("C")
  end

  def test_there_is_a_board
    skipg
    board = GameBoard.new
    output = [["==========="],
    [".", "1", "2", "3", "4"],
    ["A", " ", " ", " ", " "],
    ["B", " ", " ", " ", " "],
    ["C", " ", " ", " ", " "],
    ["D", " ", " ", " ", " "],
    ["==========="]]
    assert_equal output, board.full_board
  end

  def test_number_of_valid_moves
    board = GameBoard.new
    assert_equal 16, board.vailid_moves.count
  end

  def test_this_is_the_board
    result = [["==========="],
    [".", "1", "2", "3", "4"],
    ["A", " ", " ", " ", " "],
    ["B", " ", " ", " ", " "],
    ["C", " ", " ", " ", " "],
    ["D", " ", " ", " ", " "],
    ["==========="]]
    request = GameBoard.new.show_board
    assert_equal result, request
  end



end
