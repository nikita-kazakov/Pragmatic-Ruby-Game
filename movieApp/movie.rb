class Movie

  attr_reader :title, :rank
  attr_writer :title

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def hit?
    @rank >= 10
  end

  def status
    hit? ? "Hit" : "Flop"
    #You could have  written
    #if hit?
    #  "Hit"
    #else
    #  "Flop"
    #end

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
    "#{title} has a rank of #{rank} (#{status})"
  end

  def <=>(other_movie)
    other_movie.rank <=> @rank
  end


end


#Sample code
if __FILE__ == $0

  movie = Movie.new("goonies", 5)
  puts movie.title

  3.times{puts "hi"}



  10.upto(20) do |number|
    puts "#{number} - bye"
  end

end