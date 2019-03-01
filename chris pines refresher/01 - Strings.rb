#This is a Ruby refresher from Chris Pines - Learn to Program Book
# https://pine.fm/LearnToProgram
#

#puts and gets
#puts stands for PUT STRING.  gets is GET STRING.



puts "Hello my friend. What's your name?"
name = gets.chomp
puts "Your name is " + name + ". It's a pleasure"

#chomp is used to get rid of a break line that gets automatically generates.
# Let's look at some string methods.

word = "AbraCadaBra"
puts word.upcase