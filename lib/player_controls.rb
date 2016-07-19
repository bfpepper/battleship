require "./lib/messages"

class PlayerControls

  def main_menu
    puts Message.new.main_menu
    user_answer = gets.chomp.upcase
    if quit?(user_answer)
      quit
    elsif user_answer == "I" || user_answer == "INSTRUCTIONS"
      puts Message.new.instructions
      sleep(2)
      main_menu
    elsif user_answer == "P" || user_answer == "PLAY"
      puts Message.new.computer_placed_ships
      sleep(2)
      #do some other stuff here
    else
      puts Message.new.invalid
      sleep(2)
      main_menu
    end
  end

  def quit?(user_answer)
    true if user_answer == 'Q' || user_answer == 'QUIT'
  end

  def quit
    puts Message.new.quit
  end

end
