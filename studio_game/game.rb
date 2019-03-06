require_relative 'player'

class Game

  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(player)
    @players << player
    #or can use players.push(player)
  end

  def play

    puts "Game.play Activated!".center(80, "*")
    puts "There are #{@players.size} players in #{@title}:"
    @players.each do |player|
      puts "I am #{player.name} with a health of #{player.health}"
    end

  end

  def addPlayerTest

    puts "You currently have #{@players.size} players."
    puts "Add more?"
    decision = gets.chomp

    if decision == "yes"
      puts"What's the name of the player?"
      newPlayerName = gets.chomp
      newPlayer = Player.new(newPlayerName)
      @players.push(newPlayer)
    else
      puts "Okay, I won't touch anything..."
    end

  end

end


#Sample Code for class
if __FILE__  == $0
player1 = Player.new("Ryu",100)
game1 = Game.new("streetFighter")
game1.add_player(player1)
game1.play
end