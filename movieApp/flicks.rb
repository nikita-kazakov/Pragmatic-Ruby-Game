=begin
title1 = "goonies"
rank1 = 10

puts "#{title1} has a rank of #{rank1}"end

#Chapter 4 - Let's clean up the duplication and create a method

=end

#Chapter 7 - Classes
#Let's create a Movie Class
#





require_relative 'movie'
require_relative 'playlist'

#No longer need to generate these movie objects as I'm importing them from movies.csv!
#movie1 = Movie.new("goonies", 10)
#movie2 = Movie.new("ghostbusters", 9)
#movie3 = Movie.new("goldfinger", 7)
#movie4 = Movie.new("gremlins", 15)

playList1 = Playlist.new("playlist 1")
playList1.load("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/movieApp/movies.csv")
#playList1.add_movie(movie1)
#playList1.add_movie(movie2)
#playList1.add_movie(movie3)
#playList1.add_movie(movie4)
#load players from playlist.
#playList1.load(ARGV.shift ||"/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/chris pines refresher/movies.csv")


playList1.play(2)
playList1.print_stats
playList1.save("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/movieApp/movie_rankings.csv")

=begin
loop do
  puts "\nHow many viewings? ('quit' to exit program)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    playList1.play(answer.to_i)

  when 'quit', 'exit'
    playList1.print_stats
    break
  else
    puts "Please enter a number or 'quit'"

  end
end

=end


=begin


puts movie1.thumbs_up

#Array Practice
seats = []
seats[0] = "Boy"
seats[5] = "girl"
print seats.compact
print seats
puts "\n\n"

#Let's put movies into array
movies = [movie1, movie2, movie3]

movies.each do |movie|
  movie.thumbs_up
  puts movie
end


puts movies
puts "\n\n\n***************"

titles = %w(blink freakonomics Outliers)

print titles
puts ""
puts titles.size
puts titles[1]
puts titles[3]

titlesNew = []
titlesNew.push("blink","freakonomics", "outliers")
titlesNew.pop
titlesNew.push("outliers")
puts titlesNew

puts titlesNew.join(" and ")

puts titlesNew.shuffle
=end