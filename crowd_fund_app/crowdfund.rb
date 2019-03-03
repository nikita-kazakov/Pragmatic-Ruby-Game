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

=end

#Chapter 6
def project_list(name, fund)
  "#{name.ljust(30,".")}Cost: #{fund}"
end
puts"List of Projects"
puts project_list("ABC", 1000)
puts project_list("LMN", 2000)
puts project_list("XYZ", 5000)
