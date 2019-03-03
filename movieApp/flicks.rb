=begin
title1 = "goonies"
rank1 = 10

puts "#{title1} has a rank of #{rank1}"end

#Chapter 4 - Let's clean up the duplication and create a method

=end

#Chapter 7 - Classes
#Let's create a Movie Class
#




class Movie

  attr_reader :title, :rank
  attr_writer :title

  def initialize(title, rank)
    @title = title.capitalize
    @rank = rank
    puts "created movie object with title and rank"
  end



  def listing
    "#{@title} has a rank of #{@rank}"
  end

  def thumbs_up
    @rank = @rank + 1
  end

  def thumbs_down
    @rank = @rank - 1
  end

  def to_s
    "#{title} has a rank of #{rank}"
  end


end

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinger", 7)
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