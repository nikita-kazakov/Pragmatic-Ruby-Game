=begin Pragmatic Studio Crowd Fund App

project1_fund = 1000
project2_fund = 2000
project3_fund = 5000

project1_name = "ABC"
project2_name = "LMN"
project3_name = "XYZ"

puts "Project #{project1_name} has $#{project1_fund} in funding."
puts "Project #{project2_name} has $#{project2_fund} in funding."
puts "Project #{project3_name} has $#{project3_fund} in funding."
puts""
puts "Projects:\n\t#{project1_name}\n\t#{project2_name}\n\t#{project3_name}"



#Chapter 6
def project_list(name, fund)
  "#{name.ljust(30,".")}Cost: #{fund}"
end
puts"List of Projects"
puts project_list("ABC", 1000)
puts project_list("LMN", 2000)
puts project_list("XYZ", 5000)

=end

#Chapter 7
class Project

  def initialize(name, amountInit, amountTarget)

    @name = name
    @amountInit = amountInit
    @amountTarget = amountTarget
  end

  def fund_increase
    @amountInit += 25
    puts"#{@name} has INCREASED funds!"
  end

  def fund_decrease
    @amountInit -= 15
    puts"#{@name} has DECREASED funds!"
  end

  def to_s
    "#{@name} has $#{@amountInit}. Goal is: #{@amountTarget}."
  end

  def fund_increase_by(amt)
    @amountInit = @amountInit + amt
  end

end

proj1 = Project.new("Project1",500,1000)
proj2 = Project.new("Project2",700,1000)
proj3 = Project.new("Project3",300,1000)
proj4 = Project.new("Project4",100,1000)

=begin
puts xyz
puts xyz.fund_decrease
puts xyz
puts xyz.fund_increase_by(500)
puts xyz
=end

projectsArray = [proj1, proj2, proj3, proj4]

puts "There are #{projectsArray.size} projects:"
projectsArray.each do |project|
  puts "- #{project}"

end