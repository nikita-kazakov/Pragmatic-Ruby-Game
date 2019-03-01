class Account
  attr_accessor :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def TakeFrom(person, amount)
    person.balance = person.balance - amount
    self.balance = self.balance + amount
    puts "#{self.name} took #{amount} from #{person.name}.  #{person.name} now has a balance of #{person.balance}. #{self.name} has a balance of #{self.balance}"

  end

end

bob = Account.new("Bob", 100)
jill = Account.new("Jill", 100)

puts jill.TakeFrom(bob,50)
puts jill.TakeFrom(bob,50)
