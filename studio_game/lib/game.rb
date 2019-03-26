require_relative 'player'
require_relative 'game_turn'
require_relative 'treasure_trove'

module StudioGame

  class Game

    attr_accessor :title

    def initialize(title)
      @title = title
      @players = []
    end

    def load_players(from_file)

      File.readlines(from_file).each do |line|
        add_player(Player.from_csv(line))

      end

      def high_score_entry(player)
        formatted_name = player.name.ljust(20, '.')
        "#{formatted_name} #{player.score}"
      end

      def save_high_scores(to_file="/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/studio_game/bin/high_scores.txt")
        File.open(to_file, "w") do |file |
          file.puts "#{@title} High Scores:"
          @players.sort.each do |player|
            file.puts high_score_entry(player)
          end
        end
      end


    end

    def add_player(a_player)
      @players.push(a_player)
    end

    def play(rounds)
      puts "There are #{@players.size} players in #{@title}: "

      @players.each do |player|
        puts player
      end
      puts"\n"

      treasures = TreasureTrove::TREASURES
      puts "We have #{treasures.size} treasures to be found:"
      treasures.each do |treasure|
        puts "#{treasure.name} is worth #{treasure.points} points."
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


    def total_points
      sumpoints = 0
      @players.each do |player|
        sumpoints = sumpoints + player.points
      end
      sumpoints
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

      puts"\nPlayers Points Totals:"
      @players.each do |player|
        formatted_name = player.name.ljust(20, '.')
        puts "#{formatted_name} #{player.points}"
      end

      puts "\n#{@title} High Scores:"
      @players.sort.each do |player|
        formatted_name = player.name.ljust(20, '.')
        "#{formatted_name} #{player.score}"
      end

      puts"\nCum Points (All Players"
      formatted_name = "Sum".ljust(20, '.')
      puts "#{formatted_name} #{total_points}"

      @players.sort.each do |player|
        puts "\n#{player.name}'s point totals:"
        player.each_found_treasure do |treasure|
          puts "#{treasure.points} total #{treasure.name} points"
        end
        puts "#{player.points} grand total points"
      end


    end
  end

end





#Sample Code for class
if __FILE__  == $0
player1 = StudioGame::Player.new("Ryu",100)
player2= StudioGame::Player.new("Ken",100)
player3 = StudioGame::Player.new("Blanka",100)
player4 = StudioGame::Player.new("M.Bison",100)

game1 = Game.new("StreetFighter")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.add_player(player4)
game1.play(3)
game1.print_stats
puts "\n\n"

game1.load_players("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/studio_game/players.csv")
game1.save_high_scores



end

