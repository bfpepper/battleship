require "./lib/messages"

class PlayerControls

  def main_menu
    puts Message.new.main_menu
    user_answer = gets.chomp.upcase
    if quit?(user_answer)
      quit #How to make this the only thing that quits?
    elsif user_answer == "I" || user_answer == "INSTRUCTIONS"
      puts Message.new.instructions
    elsif user_answer == "P" || user_answer == "PLAY"
      puts Message.new.ship_placment
      #do some other stuff here
    else
      puts Message.new.invalid
    end
  end

  def quit?(user_answer)
    true if user_answer == 'Q' || user_answer == 'QUIT'
  end

end
