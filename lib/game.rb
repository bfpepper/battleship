require "pry"
require "./lib/messages"
require "./lib/player_controls"
require "./lib/computer_player"

class Game

  attr_accessor :ai_player

  def initialize
    @ai_player = ComputerPlayer.new#make part of the computer class
    #@human_player =
  end

  def start_game
    puts Message.new.welcome
    ai_player.place_ship(2)
    ai_player.place_ship(3)
    binding.pry
    PlayerControls.new.main_menu
  end

  #has player borad


end
