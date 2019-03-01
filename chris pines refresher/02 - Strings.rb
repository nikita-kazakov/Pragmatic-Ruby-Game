#This is a Ruby refresher from Chris Pines - Learn to Program Book
#https://pine.fm/LearnToProgram


word = "AbraCadabra"

#In RubyMine, Hover over any method and press Ctrl + Q.  It will give you quick documentation.
puts word.upcase
puts word.downcase
puts word.swapcase
puts word.capitalize

#Justification
puts "Table of Contents \n".center(70)
puts "Chapter 1: Getting Started ljustify".ljust(60," ") + "page 1"
puts "Chapter 2: More space ljustify".ljust(60," ") + "page 1"
puts "Chapter 3: More space I said okay ljustify?".ljust(60," ") + "page 1"

#there's also rjustify.
puts ""
puts "Table of Contents #2".center(70)
puts "The Adventurs of Baggles".rjust(40, "-")

#numbers
puts ""
puts (5-2)
puts (2-6).abs
puts 5**2
puts 7/3
puts (7.0 / 3).round(2)
puts 7.modulo(3)
puts 7%3

puts rand(500)
puts rand(20..50)

puts ""
puts Math::E
puts Math::PI
puts Math.sin(90)

puts "\n\nLet's do word stuff"
puts "aander" < "bug"
puts "aander" == "bug"

puts""
#However capital letters always come BEFORE lowercase!!!
puts "aander" < "Bug"
#So to truly compare this, let's downcase all letters.
puts "aander".downcase < "bug".downcase

