
#Chapter 4 - Variables and Objects

fav_movie = "Total Recall"
my_fav_movie = fav_movie
your_fav_movie = my_fav_movie

puts my_fav_movie.object_id
puts your_fav_movie.object_id

my_fav_movie[0] = "L"

puts my_fav_movie
puts your_fav_movie

puts ""

rank = 16
puts 16.*(2)
movie_name = "goonies"
puts movie_name.start_with?("g")
puts movie_name.include?("x")
puts movie_name.reverse!