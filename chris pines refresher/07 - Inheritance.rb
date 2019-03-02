#Learning about inheritance

class Animal

  def initialize

  end

  def speak
    puts "Hello!"
  end

end

#GoodDog inherits Animal Class
class GoodDog < Animal
end

#Cat inherits Animal Class
class Cat < Animal
end


sparky = GoodDog.new.speak
kitty = Cat.new.speak
puts "\n\n"


#So now, let's show how you can overwrite methods in the subclasses.  Kind of like cascading css.
#Speak has been overwritten and doesn't get directions from Animal class anymore.
class GoodDog < Animal

  def speak
    puts "I am GoodDOG NOW!"
  end

end

sparky = GoodDog.new.speak


#We also have a built-in function called "super". It allows you to call methods UP the inheritance hierarchy.
#Where we put super, it will look for the "speak" method that's in the SUPERCLASS (Animal).
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class"
  end
end

sparky = GoodDog.new
puts sparky.speak        # => "Hello! from GoodDog class



