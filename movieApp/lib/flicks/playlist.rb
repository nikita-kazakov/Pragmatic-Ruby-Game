require_relative 'playlist'
require_relative 'movie'
require_relative 'waldorf_and_statler'
require_relative 'snackbar'

module Flicks
  class Playlist
    attr_reader :name
    def initialize(name)
      @name = name
      @movies = []
    end

    def load(from_file)

      File.readlines(from_file).each do |line|
        add_movie(Movie.from_csv(line))
      end

    end

    def save(to_file = "movie_rankings.csv")
      File.open(to_file, "w") do |file|
        @movies.sort.each do |movie|
          file.puts movie.to_csv
        end
      end
    end

    def add_movie(a_movie)
      @movies << a_movie
    end

    def play(viewings)
      snacks = Snackbar::SNACKS
      puts "There are #{snacks.size} snacks available:"

      snacks.each do |snack|
        puts "#{snack.name} has #{snack.carbs} carbs."
      end

      puts "\n#{@name}'s playlist:"

      puts @movies.sort

      1.upto(viewings) do |count|
        puts "\n******Viewing # #{count}******"
        @movies.each do |movie|
          WaldorfAndStatler.review(movie)
          snack = Snackbar.random
          movie.ate_snack(snack)
          puts movie
        end
      end

    end

    def total_carbs_consumed

      @movies.reduce(0) do |sum, movie|
        sum + movie.carbs_consumed
      end

    end

    def print_stats

      puts "#{total_carbs_consumed} total carbs consumed"

      @movies.sort.each do |movie|
        puts "#{movie.title}'s snack totals:"

        movie.each_snack do |snack|
          puts "#{snack.carbs} total #{snack.name} carbs."
        end

        puts "#{movie.carbs_consumed} grand total carbs."
      end

      puts "\n****#{@name}'s Stats:****"
      hits, flops = @movies.partition {|movie| movie.hit?}

      puts "\nHits"
      puts hits.sort

      puts "\nFlops"
      puts flops.sort

    end
  end
end


#sample code
if __FILE__  == $0

  movie1 = Movie.new("Die Hard", 10)
  movie2 = Movie.new("Beetlejuice", 10)
  movie3 = Movie.new("Animaniacs", 10)

  playlist = FlicksModule::Playlist.new("bobsPlaylist")


  playlist.add_movie(movie1)
  playlist.add_movie(movie2)
  playlist.add_movie(movie3)
  playlist.play(3)
  playlist.print_stats

end
