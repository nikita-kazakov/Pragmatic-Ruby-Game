

=begin
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

puts "\n\n\n\n"

#Structs
Snack = Struct.new(:name, :carbs)
popcorn = Snack.new("popcorn", 20)
candy = Snack.new("candy", 15)
puts "\n\n\n\n"

#Hashes
#old way of writing before Ruby 1.9
#snack_carbs = {
#    :candy => 15,
#    :pretzel => 10
#}

#New way of writing hashes (greater than Ruby 1.9)
snack_carbs = {
    candy: 30,
    pretzel: 100

}

puts snack_carbs[:candy]

snack_carbs[:candy] = 15
puts snack_carbs[:candy]

print snack_carbs.keys
print snack_carbs.values
puts""

snack_carbs.each do |key, value|
  puts "#{key} has #{value} carbs"
end

puts"\n\n"

snack_carbs = {}
snack_carbs[:candy] = 15
snack_carbs[:candy] += 15
puts snack_carbs[:candy]

#snack_carbs[:surge] += 10

snack_carbs = Hash.new(0)
snack_carbs[:bread] += 15
p snack_carbs


#Hashes

moes_treasures = {
    :hammer => 100,
    :crowbar => 500
}

puts moes_treasures

moes_treasures.each { |key, value| puts "Moe has a #{key} that's worth #{value}" }

hash_arr = moes_treasures.keys
print hash_arr

hash_arr = moes_treasures.values
print hash_arr

puts "\n\n"

#So if we wanted to sum up the values of all the keys, we'd run this.
#In the parenthesis, is the initial value....(zero)
#Then you have the sum...for the entire block, and each part that's going to get added up.
sum1 = moes_treasures.values.reduce(0){ |sum, n| sum + n }

# can also write it with a symbol
sum2= moes_treasures.values.reduce(0, :-)
puts sum2

#You can also use INJECT...which is exactly same as reduce.
sum3 = moes_treasures.values.reduce{|sum, n| sum + n}
puts sum3
puts "\n\n\n\n\n"
=end


#Scrabble Game
#




=begin
letters = {
    "c" => 3,
    "e" => 1,
    "l" => 1,
    "n" => 1,
    "t" => 1,
    "x" => 8,
    "y" => 4
}

score = Hash.new(0)

word = "cell".each_char

word.each do |char|

  letters.each { |key, value|
    if char == key
      score[key] += value
    end
  }

end

score.each do |key, value|
  puts "#{key} : #{value}"
end

#Custom Iterators

def once

  puts "Before Yield"
  yield
  puts "After Yield"

end

once {puts "Running Block"}

def three_times

  yield(1)
  yield(2)

end

three_times {|number| puts "This is number #{number}"}


def compute
  puts yield
end


numbers = (1..10).to_a

####Let's make the array give even numbers only:

numbers = (1..10).to_a
numbers.select {|num|num.even? }

#But now, let's implement this "SELECT" method ourselves!

def my_select(array)
  results = []
  array.each do |element|
    results << element if yield(element)
  end
  results
end

puts my_select(numbers) {|n|n.even?}



def conversation
  puts "Hello"
  yield
  puts "Goodbye"
end

conversation {puts "Good to meet you!"}

def five_times
  yield 1
  yield 2
end

five_times do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end


#INPUT OUTPUT
# Opening Files

File.open("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/chris pines refresher/movies.csv") do |file|
  file.each_line do |line|
    puts line
  end

end

#use readlines method instead...it runs a block and puts each line into an array that you can then print.
File.readlines("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/chris pines refresher/movies.csv").each do |line|
  print line
end

puts "\n\n\n"
#use readlines method instead...it runs a block and puts each line into an array that you can then print.
# Make sure to require the movie object at the top of this file..
File.readlines("/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/chris pines refresher/movies.csv").each do |line|
  title, rank = line.split(",")
  movie = Movie.new(title, rank.to_i)
  puts movie
end

=end


#Practice

numbers = [1,2,3,4]
print numbers

numbers.select {|even| puts even.even? }

numbers = [1,2,3,4]
#puts numbers

numbers = (1..20).to_a
puts numbers.select{|number| number.odd? }

#numbers = (1..10)
#print numbers.to_a
#puts "\n\n"
#puts numbers.select{|n| n > 5}


#numbers.select do |number|
#  number < 5
#end

evens = numbers.select{|num| num.even?}
print evens

#puts "\n"

puts numbers.reverse
puts numbers.reject{|num| num.even?}

#odds = numbers.reject{|num| num.even?}
#print odds

#evens, odds = numbers.partition {|num| num.evens?}

#You can also partition and split into 2 variables AFTERWARDS:

#part_array = numbers.partition{|num| num.even?}
#print part_array
#evens = part_array[0]
#odds = part_array[1]

#puts "\n"
#print evens
#print odds
#puts "\n\n"
#Let's use the reduce method to sum up the array
#array = (1..5).to_a
#print array

#puts array.reduce{|sum, n| sum + n}
#puts array.reduce{|product, n| product * n}



#Writing a Factorial the  Ruby WAY.
numbers = (1..5).to_a
puts numbers.reduce{|sum, num| sum * num}


puts numbers.select! {|num| num < 4 }
puts numbers

puts numbers.any?
numbers.each {|num| puts num + 5 }

numbers.map!{|num| num + 10}
print numbers

puts "\n\n\n\n\n"

names = ["Goonies", "Ghostbusters", "Goldfinger", "Godfather"]
#Alphabetical order sorting
print names.sort
print"\n\n"

#Sort by:
print names.sort_by{|name| name.length}
puts "\n\n\n"



def sort_desc(array)
  array.sort_by!{|arr| arr.length}
  array.reverse!
end

print sort_desc(names)
puts "\n\n\n\n\n\n\n\n\n\n"


#Structs and Hashes
Snack = Struct.new(:name, :carbs)
popcorn = Snack.new("popcorn", 20)
candy = Snack.new("candy", 15)


Scores = Struct.new(:name, :score)
jack = Scores.new("jack", 20)
susan = Scores.new("Susan", 50)

players = []
players << jack
players << susan

players.each do |player|
  puts "****Player****"
  puts player.name
  puts player.score
end

puts "\n\n\n\n"

#Hashes
#old way of writing before Ruby 1.9
#snack_carbs = {
#    :candy => 15,
#    :pretzel => 10
#}

scores = {
    :jack => 20,
    :susan => 25
}

print scores


#New way of writing hashes (greater than Ruby 1.9)
#snack_carbs = {
#    candy: 30,
#    pretzel: 100

#}
puts "\n\n\n"
puts scores[:jack]
puts scores[:susan]

scores.each do |k,v|
  puts "#{k} has #{v} points"
end

#puts snack_carbs[:candy]

#snack_carbs[:candy] = 15
#puts snack_carbs[:candy]


puts scores.keys
puts scores.values
puts scores.values.reduce{|sum, n| sum + n}

print scores.keys.to_a.to_s

puts scores.keys
puts scores.values
puts scores.values.reduce{|sum, n| sum + n}

scores[:jack] += 15
scores[:jack] = scores[:jack] + 15
puts scores

#MAP returns a NEW array with the results.  That's why I'm referencing it to a new variable (mult_scores)
mult_scores = scores.map do |k,v|
  v + 100
end

puts mult_scores
puts "\n\n\n"

print scores.values.reduce{|sum, n| sum + n}



=begin
print snack_carbs.keys
print snack_carbs.values
puts""

snack_carbs.each do |key, value|
  puts "#{key} has #{value} carbs"
end

puts"\n\n"

snack_carbs = {}
snack_carbs[:candy] = 15
snack_carbs[:candy] += 15
puts snack_carbs[:candy]

#snack_carbs[:surge] += 10

snack_carbs = Hash.new(0)
snack_carbs[:bread] += 15
p snack_carbs


#Hashes

moes_treasures = {
    :hammer => 100,
    :crowbar => 500
}

puts moes_treasures

moes_treasures.each { |key, value| puts "Moe has a #{key} that's worth #{value}" }

hash_arr = moes_treasures.keys
print hash_arr

hash_arr = moes_treasures.values
print hash_arr

puts "\n\n"

#So if we wanted to sum up the values of all the keys, we'd run this.
#In the parenthesis, is the initial value....(zero)
#Then you have the sum...for the entire block, and each part that's going to get added up.
sum1 = moes_treasures.values.reduce(0){ |sum, n| sum + n }

# can also write it with a symbol
sum2= moes_treasures.values.reduce(0, :-)
puts sum2

#You can also use INJECT...which is exactly same as reduce.
sum3 = moes_treasures.values.reduce{|sum, n| sum + n}
puts sum3
puts "\n\n\n\n\n"
=end
puts "\n\n\n\n\n"

class Car
  attr_reader :name
  attr_writer :name
  def initialize(name = "default name")
    @name = name
    @points = 0
  end

  def self.description
    puts "I'm a car class."
  end

  #def name
  #  @name
  #end

  #def name=(name)
  #  @name = name
  #end

  def level_up
    @points += 1
  end

end

class Honda < Car


end

honda = Car.new
puts honda
puts honda.name
honda.name="I'm Honda"
puts honda.name
honda.level_up
honda.level_up

puts honda.inspect

Car.description
puts "\n\n\n"
puts Car.ancestors

puts Honda.description

module Items
  class Books
    def self.description
      puts "I'm the books factory"
    end
  end
end

class Hardbound < Items::Books
end

class Books #FROM ANOTHER CLASS. Will Overwrite.
  def self.description
    puts "I'm overwriting your description"
  end
end

puts Hardbound.description

puts Hardbound.description



randhash = {
    abc: 'hello',
    'another_key' => 123,
    4567 => 'third'
}

print randhash.keys.collect(&:to_s).sort_by { |key| key.length }

print randhash.keys.map{|key| key.to_s}.sort_by{|key| key.length}

def times_two(arg1);
puts arg1 * 2;
end

def sum(arg1, arg2);
puts arg1 + arg2;
end

sum    1, 2

book = :book
string = "Sleeps"

puts book.object_id
puts string.object_id