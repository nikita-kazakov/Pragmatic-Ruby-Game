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
puts "\n\n\n******************************"
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

