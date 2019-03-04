#Since this Playlist class is dependent on Movie class, we give:
require_relative 'movie'

class Playlist

  attr_accessor :movies

  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie

  end

  def play
    puts "#{@name} Playlist:"
    puts @movies

    @movies.each do |movie|
      movie.thumbs_up
      movie.thumbs_up
    end
  end

end