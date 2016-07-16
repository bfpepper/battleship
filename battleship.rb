require "./lib/game"

game = Game.new
Game.new.start_game#(game.person, game.computer)

puts Message.new.welcome

user_answer = gets.chomp.upcase

  if user_answer == "I"
    puts Message.new.instructions
  elsif user_answer == "P"
    Game.new.start_game
    #go do the game thing
  elsif user_answer == "Q"
    puts Message.new.quit
  else
    puts Message.new.invalid
  end


  #how to keep program running after a user input
