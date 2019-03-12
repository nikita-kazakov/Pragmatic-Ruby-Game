require_relative 'player'
require_relative 'game_turn'

class Game

  attr_accessor :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(a_player)
    @players.push(a_player)
  end

  def play(rounds)
    puts "There are #{@players.size} players in #{@title}: "

    @players.each do |player|
      puts player
    end

    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def print_stats
    puts "\n#{@title} Statistics:"

    strong_players, wimpy_players = @players.partition { |player| player.strong? }

    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      print_name_and_health(player)
    end

    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each do |player|
      print_name_and_health(player)
    end

    puts "\n#{@title} High Scores:"
    @players.sort.each do |player|
      formatted_name = player.name.ljust(20, '.')
      puts "#{formatted_name} #{player.score}"
    end
  end
end



#Sample Code for class
if __FILE__  == $0
player1 = Player.new("Ryu",100)
player2= Player.new("Ken",100)
player3 = Player.new("Blanka",100)
player4 = Player.new("M.Bison",100)

game1 = Game.new("streetFighter")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.add_player(player4)
game1.play(70)
end

