require_relative 'player'
require_relative 'game_turn'

class Game

  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(player)
    @players << player
    #or can use players.push(player)
  end



  def play(rounds)

    puts "Game.play Activated!".center(80, "*")
    puts "There are #{@players.size} players in #{@title}."

    1.upto(rounds) do |roundcount|
      puts"\nRound #{roundcount}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts "I am #{player.name} with a health of #{player.health} and a score of #{player.score}"
      end
      statistics

    end



  end

  def statistics

    sortedByScore = @players.sort_by{|player|player.score}
    sortedByScore.reverse!
    puts "\n\n------GAME STATISTICS------"
    puts "1 - Strong Players:"
    puts "\t#{sortedByScore[0].name} - #{sortedByScore[0].score}"

    sortedByScore.reverse!
    puts "1 - Wimpy Players:"
    puts "\t#{sortedByScore[0].name} - #{sortedByScore[0].score}"

    puts "\nHighest Scores:"
    sortedByScore.reverse!
    sortedByScore.each do |player|
      puts "#{player.name.ljust(30,".")}#{player.score}"
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

