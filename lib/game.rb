require "./lib/messages"

class Game

  attr_reader :message

  def initialize
    @message = Message.new
  end

  def start_game
    puts message.welcome
  end

end
