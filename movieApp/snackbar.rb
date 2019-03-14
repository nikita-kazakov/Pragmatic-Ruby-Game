Snack = Struct.new(:name, :carbs)

module Snackbar

  SNACKS = [
      Snack.new(:popcorn, 20),
      Snack.new(:candy, 15),
      Snack.new(:nachos, 40),
      Snack.new(:pretzels, 10),
      Snack.new(:soda, 5)
  ]

  def self.random
    SNACKS.sample
  end

  #This is the same as above...just a method.
  #def self.snacks
  #  [Snack.new(:popcorn, 20),
  #   Snack.new(:candy, 15),
  #   Snack.new(:nachos, 40),
  #   Snack.new(:pretzels, 10),
  #   Snack.new(:soda, 5)]
  #end

end


puts Snackbar.random
snack = Snackbar.random
puts "Enjoy your #{snack.name} (#{snack.carbs} carbs)"