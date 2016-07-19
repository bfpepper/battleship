require "./lib/messages"
require "./lib/player_controls"

class Game

  def initialize
    @ai_player = ComputerPlayer.new.populate_ships#make part of the computer class
    #@human_player =
  end

  def start_game
    puts Message.new.welcome
    #place 2 space ship
    #place 3 space ship
    PlayerControls.new.main_menu
  end

  #has player borad
  #has computer board


end
