require_relative 'player'
require_relative 'die'

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
      die = Die.new
      number_rolled = die.roll

      case number_rolled
      when 5..6
        player.w00t
      when 3..4
        puts "#{player.name} got skipped"
      when 1..2
        player.blam
      end

      puts "I am #{player.name} with a health of #{player.health}"

    end

  end


end


#Sample Code for class
if __FILE__  == $0
player1 = Player.new("Ryu",100)
player2= Player.new("Ken",100)
player3 = Player.new("Poppins",100)
player4 = Player.new("Baggles",100)

game1 = Game.new("streetFighter")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.add_player(player4)
game1.play
end

