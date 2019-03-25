file = File.open("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/movieApp/movies.csv")
puts file.size #File size in bytes

array = []

#read file
file.each_line do |line|
  array << line
end
file.close # but you have to remember to call CLOSE on file...To difficult to remember.
#Instead let's use a block.


#At first we just open the file...do anything inside of it.
File.open("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/movieApp/movies.csv") do |file|
end


#Now we scan each line of the file and print it.
File.open("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/movieApp/movies.csv") do |file|
  file.each_line do |line|
    puts line
  end
end

#Dude, make it easier and call the readlines method instead.  It will read each line and store it in an ARRAY.
#Viola!  No need to close the file either here.

array = File.readlines("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/movieApp/movies.csv")
p array

require_relative '../lib/movie'

File.readlines("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/movieApp/movies.csv").each do |line |
  title, rank = line.split(",")
  movie = Movie.new(title,rank.to_i)
  puts movie
end

puts "\n\n\n"

#Let's take a look at how to SAVE things to a csv file.
movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinger", 7)
movie4 = Movie.new("gremlins", 15)



movies = [movie1, movie2, movie3, movie4]
movie_write_path = "/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/movieApp/movie_rankings.csv"
File.open(movie_write_path, "w") do |file|

end

#Let's now run an enumerable on that movie array and
#puts whatever we need to delimited by commas
File.open(movie_write_path, "w") do |file|
  movies.sort.each do |movie|
    file.puts "#{movie.title}, #{movie.rank}"
  end

end