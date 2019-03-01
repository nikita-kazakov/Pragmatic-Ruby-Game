#This is a Ruby refresher from Chris Pines - Learn to Program Book
#https://pine.fm/LearnToProgram
#Let's look at loops

#if statement
if "apple" < "bananna"
  puts "Yep"
else
  puts "nope"
end

#Looping

input = ""
#while input != "bye"
#  puts input
 # input = gets.chomp
#end

puts 'come again soon'

#Arrays
puts ""
myLanguages = ['russian', 'english', 'spanish', 'french']

myLanguages.each do |lang|
  puts "I speak " + lang

end

3.times do
  puts "Hi 3 times!"
end