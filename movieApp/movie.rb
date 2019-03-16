class Movie

  attr_reader :title, :rank
  attr_writer :title

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
    @snack_carbs = Hash.new(0)
  end

  def each_snack
    @snack_carbs.each do |name, carbs|
      snack = Snack.new(name, carbs)
      yield snack
    end
  end

  def carbs_consumed
    @snack_carbs.values.reduce(0, :+)

  end

  def ate_snack(snack)
    @snack_carbs[snack.name] += snack.carbs
    puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed."
    puts "#{@title}'s snacks: #{@snack_carbs}'"
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