require "./lib/messages"
require "./lib/player_controls"

class Game

  def start_game
    puts Message.new.welcome
    PlayerControls.new.main_menu
  end

end
