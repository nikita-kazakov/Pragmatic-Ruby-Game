#This exercise is an adaption from launchschool.com
# https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1

class MyCar

  def initialize(year, color, model)

    @year = year
    @color = color
    @model = model
    @speed = 0
    @ignition = 0

  end

  #write getters
  def yearGet
    @year
  end

  def colorGet
    @color
  end

  def modelGet
    @model
  end

  def speedGet
    @speed
  end

  def ignitionGet
    @ignition
  end

  #write setters

  def colorSet=(value)
    @color = value
  end

  def modelSet=(value)
    @model = value
  end

  def speedSet=(value)
    @speed = value
  end

  def ignitionSet=(value)
    @ignition = value
  end


  #Realize that I could have skipped writing the getters and the setters and simply put down:
  #attr_accessor :model, :color, :year
  #This one little line would generate a getter and setter for model, color, and year.
  #I'm not using it to continue furthering my basic education of ruby.

  #Car Methods below

  def speedIncrease(value)
    self.speedSet = self.speedGet + value
  end

  def speedDecrease(value)
    self.speedSet = self.speedGet - value
  end

  def ignitionOff

    if self.ignitionGet == 1
      puts "Your car has now been turned off. ignitionGet = #{self.ignitionGet}"
      self.ignitionSet = 0
    else
      puts "Your car is already OFF! ignitionGet = #{self.ignitionGet}"
    end

  end


  def ignitionOn

      if self.ignitionGet == 0
        self.ignitionSet = 1
        puts "vroom vroom.  Your car just turned on. ignitionGet = #{self.ignitionGet}"
     else
        puts "Your car is already ON! ignitionGet = #{self.ignitionGet}"
      end
  end

  def sprayPaint(value)

    self.colorSet = value

  end

  #ADDING A CLASS METHOD to calculate gas mileage
  #It's special because it works on the class object itself without you having to instantiate an object first.

  def self.gas_mileage(gallons, miles)

    puts "You get #{miles / gallons} miles per gallon"
  end



end

ford = MyCar.new(2007, "black", "mustang")
puts ford.speedGet
puts ford.speedIncrease(20)
puts ford.speedIncrease(20)
puts ford.speedDecrease(10)


puts ford.ignitionOff
puts ford.ignitionOn
puts ford.ignitionOn
puts ford.ignitionOn
puts ford.ignitionOff
puts ford.ignitionOff

puts "\n\n\n"

puts ford.colorSet = "red"
puts ford.colorGet

puts "\n\n\n"

puts ford.colorGet
puts ford.sprayPaint("blue")
puts ford.colorGet

puts "\n\n"
inspectstring =  ford.inspect.to_s
inspectarray = inspectstring.split("@").to_a
print inspectarray.drop(1)
puts"\n\n"

MyCar.gas_mileage(10,30)

puts "\n\n\n*****************\n"

class Person
  attr_reader :name
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
puts bob.name