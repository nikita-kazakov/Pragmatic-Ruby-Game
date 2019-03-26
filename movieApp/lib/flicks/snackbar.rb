
module Flicks

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

  end

end

#Sample Code
if __FILE__ == $0
  puts Flicks::Snackbar.random
  snack = Flicks::Snackbar.random
  puts "Enjoy your #{snack.name} (#{snack.carbs} carbs)"
end
