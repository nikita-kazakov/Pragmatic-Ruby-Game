require_relative 'movie'

movie = Movie.new('godfather', 10)


#You can use an IF, or you can use it on a single line.
if movie.rank >= 10
  puts "Hit!"
end

puts "Hit!" if movie.rank >= 10

if movie.rank < 10
  puts "flop"
end

puts "flop" if movie.rank < 10

puts "\n\n"


if movie.rank >= 10
  puts "hit"
else
  puts "flop"
end