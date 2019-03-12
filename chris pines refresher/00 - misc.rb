numBottles = 99


while numBottles > 2
  puts "#{numBottles} bottles of beer on the wall. #{numBottles} bottles of beer."
  puts "Take one down, pass it around. \n#{numBottles - 1} bottles of beer on the wall."
  numBottles -= 1
end


puts "#{numBottles} bottle of beer on the wall. #{numBottles} bottle of beer."
puts "Take one down, pass it around. \n#{numBottles} bottle of beer on the wall."
numBottles -= 1


puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."

puts"\n\n\n"

numbers = [1,2,3,4]
puts numbers

numbers = (1..10)
print numbers.to_a
puts "\n\n"
puts numbers.select{|n| n > 5}


numbers.select do |number|
  number < 5
end

evens = numbers.select{|num| num.even?}
print evens

puts "\n"

odds = numbers.reject{|num| num.even?}
print odds

#evens, odds = numbers.partition {|num| num.evens?}

#You can also partition and split into 2 variables AFTERWARDS:

part_array = numbers.partition{|num| num.even?}
print part_array
evens = part_array[0]
odds = part_array[1]

puts "\n"
print evens
print odds
puts "\n\n"
#Let's use the reduce method to sum up the array
array = (1..5).to_a
print array

puts array.reduce{|sum, n| sum + n}
puts array.reduce{|product, n| product * n}


names = ["Goonies", "Ghostbusters", "Goldfinger", "Godfather"]
#Alphabetical order sorting
print names.sort


print"\n\n"

#Sort by:
print names.sort_by{|name| name.length}



#Practice iterators
array = [24,13,8,65]

newArray = array.select {|num|num>20 }
print newArray

newArray = array.reject {|num|num>20 }
print newArray

puts "\n\n"
newArray = array.sort
puts newArray

puts "\n\n"
newArray = array.sort.reverse
print newArray
puts "\n\n"

newArray = array.reduce{|sum,n| sum + n}
print newArray

evens, odds = array.partition {|num|num.even? }
puts "\n\n"
print evens, odds

puts "\n\n"
array = ["bobby", "alpha", "shazzball", "dickerson"]
print array

newArray = array.sort
print newArray

newArray = array.sort_by{|item|item.length}.reverse
print newArray