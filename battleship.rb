require "./lib/game"

game = Game.new
Game.new.start_game#(game.person, game.computer)

puts Message.new.welcome

user_answer = gets.chomp.upcase

if user_answer == "I"
  puts Message.new.instructions
elsif user_answer == "P"
  #go do the game thing
elsif user_answer == "Q"
  puts Message.new.quit
else
  puts "Invalid selection. Please try again."
end

#how to keep program running after a user input 
