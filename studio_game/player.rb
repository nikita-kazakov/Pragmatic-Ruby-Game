class Player

  attr_reader :health, :name
  attr_writer :name

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health}"
  end

  def w00t
    @health = @health + 15
    puts "#{@name} got w00ted!"
  end

  def blam
    @health = @health - 10
    puts "#{@name} got blammed!"
  end

  def score
    @health + @name.length
  end

end

#Sample code for this class:
# __FILE__ is the name of this file, "player.rb". $0 is the currently running program (player.rb), then run.
# This won't run if we call this class from another class.  This is good.
if __FILE__  == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.w00t
  puts player.health
  player.blam
  puts player.health
end