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


puts"*********************************\n*********************************\n*********************************\n*********************************\n"
puts "Start Account Transaction\n\n"

class Account

  #initialize method to create the @amount instance variable
  # We define amount initial value to $100
  def initialize(name ,amount)
    @name = name
    @amount = amount
    puts "I'm #{nameGet} with an initial amount of $#{amountGet}."
  end

  #this is a getter method
  def amountGet
    @amount
  end

  #this is a setter method
  def amountSet=(value)
    @amount = value
  end

  #name getter method
  def nameGet
    @name = name
  end

  #This method adds money
  def moneyGiveTo(amountGiven,recipientName)
    puts "***Start moneyGiveTo method***"
    puts "#{self.nameGet} has $#{self.amountGet}."
    puts "#{self.nameGet} gives #{amountGiven} to #{recipientName.nameGet}"
    self.amountSet = self.amountGet - amountGiven
    recipientName.amountSet = recipientName.amountGet + amountGiven
  end

end

bob = Account.new("bob", 100)
sally = Account.new("sally", 100)

puts ""
puts ""

bob.moneyGiveTo(50, sally)
puts""
puts "#{bob.nameGet} now has #{bob.amountGet}"
puts "#{sally.nameGet} now has #{sally.amountGet}"
puts""

bob.moneyGiveTo(30, sally)
puts""
puts "#{bob.nameGet} now has #{bob.amountGet}"
puts "#{sally.nameGet} now has #{sally.amountGet}"
puts""

bob.moneyGiveTo(40, sally)
puts""
puts "#{bob.nameGet} now has #{bob.amountGet}"
puts "#{sally.nameGet} now has #{sally.amountGet}"
puts""

sally.moneyGiveTo(100, bob)
puts""
puts "#{bob.nameGet} now has #{bob.amountGet}"
puts "#{sally.nameGet} now has #{sally.amountGet}"
puts""