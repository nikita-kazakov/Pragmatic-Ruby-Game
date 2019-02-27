#This is a Ruby refresher from Chris Pines - Learn to Program Book
#https://pine.fm/LearnToProgram


word = "AbraCadabra"

#In RubyMine, Hover over any method and press Ctrl + Q.  It will give you quick documentation.
puts word.upcase
puts word.downcase
puts word.swapcase
puts word.capitalize

#Justification
puts "Table of Contents \n".center(width = 70)
puts "Chapter 1: Getting Started ljustify".ljust(60," ") + "page 1"
puts "Chapter 2: More space ljustify".ljust(60," ") + "page 1"
puts "Chapter 3: More space I said okay ljustify?".ljust(60," ") + "page 1"

#there's also rjustify.
puts ""