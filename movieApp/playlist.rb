require_relative 'movie'
require_relative 'waldorf_and_statler'

class Playlist

  attr_reader :name

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(a_movie)
    @movies << a_movie
  end



  def play
    puts "#{@name}'s playlist:"

    puts @movies

    @movies.each do |movie|
      WaldorfAndStatler.review(movie)
      puts movie
    end
  end
end

#sample code
if __FILE__  == $0

  movie1 = Movie.new("Die Hard", 10)
  movie2 = Movie.new("Beetlejuice", 10)
  movie3 = Movie.new("Animaniacs", 10)

  playlist = Playlist.new("bobsPlaylist")


  playlist.add_movie(movie1)
  playlist.add_movie(movie2)
  playlist.play
end