require_relative 'rankable'

module Flicks

  class Movie

    include Rankable
    attr_reader :title, :rank
    attr_accessor :rank

    def initialize(title, rank=0)
      @title = title.capitalize
      @rank = rank
      @snack_carbs = Hash.new(0)
    end

    def self.from_csv(line)
      title, rank = line.split(",")
      Movie.new(title, rank.to_i)
    end

    def to_csv
      "#{title},#{rank}"
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

    def listing
      "#{@title} has a rank of #{@rank}"
    end

    def to_s
      "#{title} has a rank of #{rank} (#{status})"
    end

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