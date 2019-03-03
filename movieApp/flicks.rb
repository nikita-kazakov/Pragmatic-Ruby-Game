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


end

movie1 = Movie.new("goonies", 10)
puts movie1.thumbs_up