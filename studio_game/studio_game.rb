=begin

#Chapter 3 Numbers and Strings

name1 = "larry"
name2 = "curly"
name3 = "moe"
health1 = 60
health2 = 125
health3 = 100

puts 'larry\'s health is ' + health1.to_s
puts "#{name1}'s health is #{health1}"
puts "#{name1}'s health is #{health1 * 3}"
puts "#{name1}'s health is #{health1 / 9.0}"

puts "Players: \n\tlarry\n\tcurly\n\tmoe"
puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}"
puts "\n\n\n"


puts "#{name1.capitalize} has a health of #{health1}"
puts "#{name2.upcase} has a health of #{health2}"

puts "#{name3} has a health of #{health3}".center(50, "*")

time_start = Time.new
puts time_start.strftime("The game started on %A %d/%m/%Y at %H:%M%p")

puts self
self.class

#Chapter 4 - Methods

def time_now
  time_now = Time.new
  time_now.strftime("%B")
end

def say_hello(name, health = 100)
  "I'm #{name.capitalize} with a health of #{health} as of #{time_now}"
end

puts say_hello("larry", 60)
puts say_hello("curly", 125)
puts say_hello("moe")
puts say_hello("shemp", 90)

=end

#Chapter 7 - Classes

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


=begin

player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3

player3.blam
puts player3
player3.w00t
puts player3.name = "wallace"
puts player3.name

=end

#Chapter 9 - Arrays.  Let's use arrays to iterate through code to get the players status.

player1 = Player.new("Moe", 100)
player2 = Player.new("Larry", 60)
player3 = Player.new("Curly", 125)
player4 = Player.new("Shemp", 90)

players = [player1, player2, player3]
puts "There are #{players.size} players in the game:"

#prints players status
players.each do |player|

  puts player

end

#prints player health
players.each do |player|
  puts player.health
end

players.pop()
players.push(player4)

players.each do |player|
  player.blam
  player.w00t
  player.w00t
  puts player
end