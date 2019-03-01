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

puts ""

myList = ["first", "second", "third"]
print "size of list:  #{myList}"
print myList.concat(["four"])

puts ""
puts myList.first(2)
puts myList.last(2).reverse

puts ""
puts myList

puts""

puts myList.push("five", "six", "seven", "eight")

puts""
puts myList.pop(2)

def mult(num1, num2)
  puts num1 * num2
end

mult(5,4)